class AddColumnPromoDateEnd < ActiveRecord::Migration[5.2]
  def change
    add_column :promos, :promo_date_end, :date
  end
end
