class ListingsController < ApplicationController
  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def edit
    @listing = Listing.find(params[:id])
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
      render 'show'
    end
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update_attributes(listing_params)
      redirect_to @listing
    else
      render 'edit'
    end
  end

  def index
    @listings = Listing.all
  end

  private

    def listing_params
      params.require(:listing).permit(:address, :price, :showing_dates,
      																:utilities, :bedrooms, :bathrooms,
      																:car_parks, :extra_info)
    end
end
