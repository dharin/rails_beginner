class Ingredient < ActiveRecord::Base

		validates_presence_of :name,:unit_id,:rate
		validates :rate, numericality: {only_float: true}
		validates :rate, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }


belongs_to :unit
belongs_to :user
has_many :ingredientsrecipes
has_many :recipe ,through:  :ingredientsrecipes


end
