class AddForeignKeyGuest < ActiveRecord::Migration[5.2]
  def change
  	add_reference :guests, :wedding, index: true
  end
end