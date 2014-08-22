# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:username => 'rajnik', :password => '12345678', :isadmin => true ,:password_confirmation => '12345678')
Unit.create([{:name => 'Kilogram'},{:name => 'Liter'},{:name => 'Gram'}])