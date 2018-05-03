class Admin::GalleryController < ApplicationController
	layout "admin"

	def index
		@galleries = Gallery.all
	end

	def create
		byebug
	end
end
