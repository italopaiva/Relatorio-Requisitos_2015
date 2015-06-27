class DriversController < ApplicationController

	def index
		@drivers = Driver.all
	end

	def new
		@driver = Driver.new
	end

	def create
		@driver = Driver.new driver_params

		if @driver.save
			
		else
		
		end
	end

	def driver_params
		params.require(:driver).permit(:driver_name, :driver_id, :driver_patent, :driver_cnh, :driver_license, :license_expiration)
	end
end
