class AddImageDataColumnToCollections < ActiveRecord::Migration[7.0]
  def change
    add_column :collections, :image_data, :text
  end
end
