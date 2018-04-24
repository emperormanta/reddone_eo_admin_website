class Admin::WeddingController < ApplicationController
	layout "admin"

	def index
		@weddings = Wedding.all
	end

end
