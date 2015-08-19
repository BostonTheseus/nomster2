class Place < ActiveRecord::Base
	self.per_page = 5
	belongs_to :user
	geocoded_by :address
  	after_validation :geocode
	
	validates :name, :presence => true
end
