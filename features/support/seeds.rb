listing = Listing.new(:address => 'MyString',
						:price => 1,
						:showing_dates => DateTime.new(2015,8,12,7,8,6),
						:utilities => 'MyString',
						:bedrooms => 1,
						:bathrooms => 1,
						:car_parks => 1,
						:extra_info => 'MyString')
listing.save
