class RenameImagesToPosts < ActiveRecord::Migration
  def change
    rename_table :images, :posts
  end
end
