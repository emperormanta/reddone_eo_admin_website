class CreateSlideShowImages < ActiveRecord::Migration[5.2]
  def change
    create_table :slide_show_images do |t|
      t.text :description
      t.boolean :active
      t.integer :created_by

      t.timestamps
    end
  end
end
