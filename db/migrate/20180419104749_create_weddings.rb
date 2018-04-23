class CreateWeddings < ActiveRecord::Migration[5.2]
  def change
    create_table :weddings do |t|
    	t.string :name_wedding
    	t.string :owner

      t.timestamps
    end
  end
end
