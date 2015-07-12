class User < ActiveRecord::Base
	has_many :relation, :dependent => :destroy
	has_many :article, :dependent => :destroy

	def self.create_with_omniauth(auth)
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.name = auth["info"]["nickname"]
			user.icon = auth["info"]["image"]
		end
	end

end
