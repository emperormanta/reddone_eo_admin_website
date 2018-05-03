class Admin::AboutController < ApplicationController
	layout "admin"

	def index
		@abouts = About.all
	end

	def create
		@about = About.new(description: params[:description], active: params[:active].present? ? true : false)
		if params[:active].present?
			About.update_all active: false
		end
		@about.save
		@abouts = About.all
		respond_to do |f|
			f.js
		end
	end

	def update
		about = About.find_by(id: params[:id])
		if params[:active] == "Active"
			About.update_all active: false
		end
		about.update(description: params[:edit_description_about], active: params[:active] == "Active" ? true : false)
		@abouts = About.all
		respond_to do |f|
			f.js
		end
	end

	def destroy
		about = About.find(params[:id])
		if about.destroy
			respond_to do |f|
				f.html { redirect_to admin_about_index_path }
			end
		else
			respond_to do |f|
				f.html
			end
		end
	end
end
