class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.text :description
      t.boolean :active
      t.integer :created_by

      t.timestamps
    end
  end
end
