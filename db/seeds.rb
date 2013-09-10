# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
puts 'CREATING ROLES'

Role.create([
  { :name => 'admin' },
  { :name => 'user' },
  { :name => 'VIP' }
], :without_protection => true)

puts 'SETTING UP DEFAULT USER LOGIN'

user = User.create! :name => 'Admin User', :email => 'admin@tagit.com', :password => '12345678', :password_confirmation => '12345678'
puts 'New admin user created: ' << user.name
user2 = User.create! :name => 'VIP User', :email => 'vip@tagit.com', :password => '12345678', :password_confirmation => '12345678'
puts 'New vip user created: ' << user2.name
user3 = User.create! :name => 'Simple User', :email => 'user@tagit.com', :password => '12345678', :password_confirmation => '12345678'
puts 'New simple user created: ' << user3.name

user.add_role :admin
user2.add_role :VIP
user3.add_role :user
puts 'New roles granted to users'
