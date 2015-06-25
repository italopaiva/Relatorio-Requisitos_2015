class LoginController < ApplicationController
	def index

	end

	def auth_user
		@login = params[:login]
		@password = params[:password]

		puts @password
	end
end
