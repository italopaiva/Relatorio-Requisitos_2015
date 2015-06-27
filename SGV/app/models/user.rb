class User < ActiveRecord::Base

	def self.get_user_by_login login
		find_by user_login: login
	end

end
