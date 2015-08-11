class Listing < ActiveRecord::Base
	validates :address, presence: true
end
