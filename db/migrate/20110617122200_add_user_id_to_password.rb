class AddUserIdToPassword < ActiveRecord::Migration
  def change
    add_column  :passwords , :user_id , :integer
  end
end
