class Session < ActiveRecord::Base
  belongs_to :user
  before_save :generate_token

  private

  def generate_token
    self.token = encrypt
  end

  def encrypt
    secure_hash("#{Time.now.utc}--#{self.user.email}--#{self.user.salt}")
  end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end
end