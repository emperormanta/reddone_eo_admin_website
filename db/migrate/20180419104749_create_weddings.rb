class CreateWeddings < ActiveRecord::Migration[5.2]
  def change
    create_table :weddings do |t|
    	t.string :name_wedding
    	t.string :owner
    	t.string :location
    	t.date :event_date
    
      t.timestamps
    end
  end
end
