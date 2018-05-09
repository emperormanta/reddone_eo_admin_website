class AddTitletoSsImage < ActiveRecord::Migration[5.2]
  def change
    add_column :slide_show_images, :title, :string
  end
end
