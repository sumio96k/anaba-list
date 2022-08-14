class RemoveAdminMemoFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :admin_memo, :text
  end
end
