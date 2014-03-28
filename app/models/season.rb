class Season < ActiveRecord::Base
	has_many :matches
	has_many :teams

end