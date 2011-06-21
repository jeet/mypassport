class AddFieldsToPassword < ActiveRecord::Migration
  def change
    add_column :passwords, :first_name, :string
   add_column :passwords, :last_name, :string
  end
end
