class User < ActiveRecord::Base
	before_save :encrypt_password
	 validates :password, confirmation: true
	#after_save :clear_password
	
	def encrypt_password
  		if password.present?
    self.salt = BCrypt::Engine.generate_salt
    self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
    self.password = nil
   end
end
# def clear_password
# 		binding.pry
#end
def self.authenticate(username, password)
	user = User.find_by_username(username)
		if(user.present?)
		  salt = User.find_by_username(username).salt
          encrypted_password= BCrypt::Engine.hash_secret(password, salt)
	      user = User.where(username: username, encrypted_password: encrypted_password)
			if (user.present?)
				return user.first
			else
				return nil
			end
		else
			return nil
		end
	end
end
