class Admin::GuestController < ApplicationController
	layout "admin"

	def index
		@weddings = Wedding.all
	end

	def import
		Guest.import(params[:file],params[:wedding].to_i)
		redirect_to admin_guest_index_path, notice: "Guests imported"
	end

	def choose
		@guests = Guest.where(wedding_id:params[:wedding])
		respond_to do |f|
			f.js
		end
	end

	def new
		@guests = Guest.where(wedding_id:params[:wedding_id])
		respond_to do |f|
			f.js
		end
	end

end