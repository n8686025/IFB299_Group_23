class ListingsController < ApplicationController
  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
    	redirect_to @listing
    else
      render 'new'
    end
  end

  def delete
    @listing = Listing.find(params[:id])
    if @listing.destroy
      redirect_to root_path
    else
      render "listing/#{params[:id]}"
    end
  end

  private

    def listing_params
      params.require(:listing).permit(:address, :price, :showing_dates,
      																:utilities, :bedrooms, :bathrooms,
      																:car_parks, :extra_info)
    end
end
