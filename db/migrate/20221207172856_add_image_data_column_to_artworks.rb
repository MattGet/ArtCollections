class AddImageDataColumnToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :image_data, :text
  end
end
