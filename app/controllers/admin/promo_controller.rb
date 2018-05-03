class Admin::PromoController < ApplicationController
  layout "admin"

  def index
    @promos = Promo.all
  end

  def create
    @promo = Promo.new(name: params[:name], description: params[:description], promo_date_start: params[:promo_date_start], promo_date_end: params[:promo_date_end], active: params[:active].present? ? true : false)
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
  end
end
