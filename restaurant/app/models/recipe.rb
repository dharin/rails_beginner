class Recipe < ActiveRecord::Base

	validates_presence_of :name,:user_id

	has_many :ingredientsrecipes
	has_many :ingredient ,through:  :ingredientsrecipes

	belongs_to :user
end
