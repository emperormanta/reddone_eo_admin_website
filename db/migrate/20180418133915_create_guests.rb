class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
    	t.string :guest_id
    	t.string :name
    	t.string :email
    	t.string :address
    	t.boolean :presence
    	t.string :note

      t.timestamps
    end
  end
end
