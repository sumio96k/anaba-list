class ChangeColumnToNull < ActiveRecord::Migration[6.1]
  def up
    change_column_null :tags, :name, true
  end

  def down
    change_column_null :tags, :name, false
  end
end
