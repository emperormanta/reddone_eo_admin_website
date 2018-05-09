class Admin::PromoController < ApplicationController
  layout "admin"

  def index
    @promos = Promo.all
  end

  def create
    date_start = params[:promo_date_start][:year] + "-" + params[:promo_date_start][:month] + "-" + params[:promo_date_start][:day]
    date_end = params[:promo_date_end][:year] + "-" + params[:promo_date_end][:month] + "-" + params[:promo_date_end][:day]
    @promo = Promo.new(name: params[:name], description: params[:description], promo_date_start: date_start, promo_date_end: date_end, active: params[:active].present? ? true : false)
		if params[:active].present?
			Promo.update_all active: false
    end
    @promo.save
    @promos = Promo.all
		respond_to do |f|
			f.js
		end
  end

  def update
  end

  def destroy
    promo = Promo.find(params[:id])
    if promo.destroy
      respond_to do |f|
        f.html { redirect_to admin_promo_index_path }
      end
    else
      respond_to do |f|
        f.html
      end
    end
  end
end
