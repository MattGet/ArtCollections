class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.text :title
      t.text :owner
      t.text :style
      t.text :location

      t.timestamps
    end
  end
end
