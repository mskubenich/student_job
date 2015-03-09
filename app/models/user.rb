class User < ActiveRecord::Base
  attr_accessor :password, :password_confirmation
  has_and_belongs_to_many :roles
  has_many :sessions

  before_save :encrypt_password, :set_default_role

  validates :email,       presence: true, length: { maximum: 50 }

  validates :password, length: { minimum: 6 }, confirmation: true, presence: true, :if => lambda{ new_record? || !password.nil? }

  def authenticate(password)
    self.encrypted_password == encrypt(password)
  end

  def admin?
    self.role.present? && self.role.name == 'admin'
  end

  def student?
    self.role.present? && self.role.name == 'student'
  end

  def recruiter?
    self.role.present? && self.role.name == 'recruiter'
  end

  def guest?
    !self.role.present?
  end

  private

  def encrypt_password
    self.salt = make_salt if new_record?
    self.encrypted_password = encrypt(self.password) if self.password
  end

  def encrypt(string)
    secure_hash("#{string}--#{self.salt}")
  end

  def make_salt
    secure_hash("#{Time.now.utc}--#{self.password}")
  end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end

  def set_default_role
    self.roles << Role.where(name: 'seeker').first if self.roles.blank?
  end

end