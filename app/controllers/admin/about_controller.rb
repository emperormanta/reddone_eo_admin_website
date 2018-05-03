class Admin::AboutController < ApplicationController
	layout "admin"

	def index
		@abouts = About.all
	end

	def show
	end

end
