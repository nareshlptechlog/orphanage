class RegistrationForm < ActiveRecord::Base
	has_one :work, dependent: :destroy
end
