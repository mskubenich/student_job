class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :email
      t.string     :encrypted_password
      t.string     :salt
      t.datetime   :last_sign_in_at
      t.string     :last_sign_in_ip
      t.string     :first_name
      t.string     :last_name
      t.references :role
      t.string     :date_of_birth
      t.string     :country

      t.timestamps
    end
  end
end
