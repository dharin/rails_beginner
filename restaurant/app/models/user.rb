class User < ActiveRecord::Base

attr_accessor :admin_password,:password_confirmation  
attr_reader :admin_password,:password_confirmation
	validates_presence_of :username,:password 
	validates_uniqueness_of :username
	validates_length_of :password, :minimum => 8 ,:msg => "password Must be atleast 8 character"
	validates_confirmation_of :password
  validate :password_contains_username,:chech_admin

  has_many :ingredients  
  has_many :recipes
  accepts_nested_attributes_for :ingredients


  def password_contains_username
    if password.include? username
      errors.add(:password, " Should Not Contain username")
    end
  end

def chech_admin

    if admin_password != User.where(:isadmin => true).first.password
      errors.add(:adminpassword, "Administrator Password is Wrong")
    end
  end
  


end