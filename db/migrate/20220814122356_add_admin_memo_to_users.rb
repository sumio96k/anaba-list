class AddAdminMemoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin_memo, :text
  end
end
