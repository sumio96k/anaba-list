class RemoveEvaluationFromPostComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :post_comments, :evaluation, :float
  end
end
