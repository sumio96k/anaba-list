class AddAdminMemoToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :admin_memo, :text
  end
end
