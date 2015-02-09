class Service < ActiveRecord::Base
	
	validates :name, presence: true
	validates :points, presence: true
	validates :price, presence: true
	
end