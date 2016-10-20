class AddColumnToChapter < ActiveRecord::Migration[5.0]
  def change
    add_column :chapters, :date, :string
  end
end
