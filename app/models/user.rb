class User < ActiveRecord::Base
	has_one :player
	has_secure_password
end