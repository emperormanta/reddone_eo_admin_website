class Admin::WeddingController < ApplicationController
	layout "admin"

	def index
		@weddings = Wedding.all
	end

	def create
		if Wedding.create(name_wedding: params[:wedding_name],
			owner: params[:owner],
			pic_wedding:params[:pic_wedding],
			event_date:Date.new(params[:start_date][:year].to_i,params[:start_date][:month].to_i,params[:start_date][:day].to_i)
			)
			@weddings = Wedding.all
			respond_to do |f|
				f.js
				f.html {redirect_to admin_wedding_index_path }
			end
		else
			respond_to do |f|
				f.js
				f.html {redirect_to admin_wedding_index_path }
			end
		end
	end

	def update
		wedding = Wedding.find_by(id:params[:id])
		if wedding.update(name_wedding: params[:edit_wedding_name],
			owner: params[:edit_owner],
			pic_wedding:params[:pic_wedding],
			event_date:Date.new(params[:start_date][:year].to_i,params[:start_date][:month].to_i,params[:start_date][:day].to_i)
			)
			@weddings = Wedding.all
			respond_to do |f|
				f.js
				f.html {redirect_to admin_wedding_index_path }
			end
		else
			respond_to do |f|
				f.js
				f.html {redirect_to admin_wedding_index_path }
			end
		end
	end

	def destroy
		wedding=Wedding.find(params[:id])
		if wedding.destroy
			respond_to do |f|
				f.html { redirect_to admin_wedding_index_path }
			end
		else
			respond_to do |f|
				f.html
			end
		end
	end

end
