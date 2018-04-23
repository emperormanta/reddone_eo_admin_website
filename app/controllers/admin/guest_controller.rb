class Admin::GuestController < ApplicationController
	layout "admin"

	def index
		@weddings = Wedding.all
	end

	def import
		Guest.import(params[:file],params[:wedding].to_i)
		redirect_to admin_guest_index_path, notice: "Guests imported"
	end
end
