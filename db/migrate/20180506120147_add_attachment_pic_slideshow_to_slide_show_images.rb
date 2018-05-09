class AddAttachmentPicSlideshowToSlideShowImages < ActiveRecord::Migration[5.2]
  def self.up
    change_table :slide_show_images do |t|
      t.attachment :pic_slideshow
    end
  end

  def self.down
    remove_attachment :slide_show_images, :pic_slideshow
  end
end
