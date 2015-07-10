class User < ActiveRecord::Base

	#paperclip
	#validates_attachment_content_type :icon, :content_type => /\Aimage\/.*\Z/

	def self.create_with_omniauth(auth)
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.name = auth["info"]["nickname"]
			user.icon = auth["info"]["image"]
		end
	end
end
