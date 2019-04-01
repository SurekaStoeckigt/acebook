class CreateSign_ups < ActiveRecord::Migration[5.1]
  def change
    create_table :sign_ups do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :email
      t.string :password
      t.string :password_confirm
    end
  end
end
