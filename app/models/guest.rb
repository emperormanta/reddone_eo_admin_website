class Guest < ApplicationRecord

	def self.import(file,wedding_id)
		spreadsheet = Roo::Spreadsheet.open(file.path)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
		  row = Hash[[header, spreadsheet.row(i)].transpose]
		  row["wedding_id"] = wedding_id
		  row["guest_id"] = generate_number(row["name"]) 
			guest = find_by_id(row["id"]) || new
		  guest.attributes = row.to_hash
		  guest.save!
		end
	end

	def self.generate_initial_name(name)
			split_name = name.split(" ")
			length = split_name.length
			intial_name = split_name[0].first
			1.upto(length-1) do |x|
				intial_name << split_name[x].first
			end
			return intial_name
	end

  def self.generate_number(name)
    date = DateTime.now()
		get_partial = []
		get_partial[0] = date.hour.to_s
		get_partial[1] = date.minute.to_s
		get_partial[2] = date.second.to_s

		structure_number = generate_initial_name(name).concat("_")

		get_partial.each do |x|
			structure_number.concat(x)
		end

    check_duplicate_id = Guest.where.not(guest_id:nil).where(guest_id: structure_number)

		if check_duplicate_id.present?
			return generate_number(name)
		else
			return structure_number
		end
  end


end
