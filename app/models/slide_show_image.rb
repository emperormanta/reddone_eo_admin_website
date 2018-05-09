class SlideShowImage < ApplicationRecord
  has_attached_file :pic_slideshow, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :pic_slideshow, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
