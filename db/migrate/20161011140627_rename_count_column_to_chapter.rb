class RenameCountColumnToChapter < ActiveRecord::Migration[5.0]
  def change
    rename_column :chapters, :count, :url
  end
end
