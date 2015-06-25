class Driver < ActiveRecord::Base
	belongs_to :unit
	belongs_to :vehicle
end
