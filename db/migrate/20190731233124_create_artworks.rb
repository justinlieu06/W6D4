class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.integer :artist_id
      t.string :title
      t.string :image_url

      t.timestamps
    end
    add_index :artworks, :artist_id
    add_index :artworks, [:artist_id, :title], unique: true
  end
end
