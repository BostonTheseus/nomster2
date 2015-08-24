class Place < ActiveRecord::Base
	self.per_page = 5
	belongs_to :user
	has_many :comments
	has_many :images
	geocoded_by :address
  	after_validation :geocode
	
	validates :name, :presence => true
end
