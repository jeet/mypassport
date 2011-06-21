class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.string :name
      t.string :email
      t.string :nickname
      t.string :password_digest

      t.timestamps
    end
  end
end
