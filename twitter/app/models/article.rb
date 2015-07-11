class Article < ActiveRecord::Base
	belongs_to :user
	serialize :tags
	serialize :likes
end
