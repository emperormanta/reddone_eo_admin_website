class Admin::SlideShowImageController < ApplicationController
  layout 'admin'
  def index
    @ssimages = SlideShowImage.all
  end
  
  def create
    @ssimage = SlideShowImage.new(title: params[:title], description: params[:description],  active: params[:active].present? ? true : false, pic_slideshow: params[:pic_slideshow])
    if @ssimage.save
      @ssimages = SlideShowImage.all
      respond_to do |f|
        f.js
        f.html {redirect_to admin_slide_show_image_index_path}
      end
    else
      respond_to do |f|
        f.js
        f.html {redirect_to admin_slide_show_image_index_path}
      end
    end

  end

  def update
  end
  
  def destroy
  end
end
