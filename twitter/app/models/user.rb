class User < ActiveRecord::Base
	has_many :relation, :dependent => :destroy
end
