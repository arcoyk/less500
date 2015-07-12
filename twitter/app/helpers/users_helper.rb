module UsersHelper
	def is_following from, to
		Relation.where(:user_id => from.id, :to_user_id => to.id)
	end

	def is_followed to, from
		is_following from, to
	end

	def user_face user
		"<a href='/users/#{user.name}'> <img alt='#{user.name}' src='/assets/#{user.icon}'> </a>"
	end
end
