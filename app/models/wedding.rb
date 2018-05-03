class Wedding < ApplicationRecord
	has_attached_file :pic_wedding, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :pic_wedding, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
