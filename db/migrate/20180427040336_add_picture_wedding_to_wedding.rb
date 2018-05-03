class AddPictureWeddingToWedding < ActiveRecord::Migration[5.2]
	  def self.up
	    add_attachment :weddings, :pic_wedding
	  end

	  def down
	    remove_attachment :weddings, :pic_wedding
	  end
end
