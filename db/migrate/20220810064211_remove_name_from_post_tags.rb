class RemoveNameFromPostTags < ActiveRecord::Migration[6.1]
  def change
    remove_column :post_tags, :name, :string
  end
end
