class EditColumnPromoDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :promos, :promo_date, :promo_date_start
  end
end
