class CreatePromos < ActiveRecord::Migration[5.2]
  def change
    create_table :promos do |t|
      t.string :name
      t.string :description
      t.date :promo_date
      t.boolean :active

      t.timestamps
    end
  end
end
