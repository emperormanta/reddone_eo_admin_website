class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
    	t.string :image_file_location
    	t.string :image_description
    	t.boolean :active, :default => true
    	t.integer :created_by

      t.timestamps
    end
  end
end
