class CreateArtworksCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks_collections do |t|
      t.integer :artwork_id
      t.integer :collection_id
    end
  end
end
