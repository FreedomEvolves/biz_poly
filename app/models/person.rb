class Person < ActiveRecord::Base
	has_many :interactions, as: :interaction

	def name
		"#{first_name} #{last_name}"
	end

end
