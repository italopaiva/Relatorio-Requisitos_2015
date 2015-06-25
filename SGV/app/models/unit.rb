class Unit < ActiveRecord::Base
	has_many :vehicles
	has_many :drivers
	has_many :users
end
