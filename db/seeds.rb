require 'faker'
require 'ffaker'

def create_admin!
  client = Client.new
  client.name = 'admin'
  client.phone = '123456'
  client.email = 'admin@admin.com'
  client.admin = true
  client.password = '123456'
  client.password_confirmation = '123456'
  client.save!
end

def create_peasant!
  client = Client.new
  client.name = 'a'
  client.phone = '123456'
  client.email = 'a@a.com'
  client.admin = false
  client.password = '123456'
  client.password_confirmation = '123456'
  client.save!
end

puts 'Cleaning database'
User.all.each(&:destroy)
Client.all.each(&:destroy)
Movie.all.each(&:destroy)
Episode.all.each(&:destroy)
Season.all.each(&:destroy)
Show.all.each(&:destroy)
Genre.all.each(&:destroy)

puts 'Creating genres'
rand(100).times do
  Genre.create! title: Faker::Book.genre
end

puts 'Creating movies'
rand(100).times do
  m = Movie.create! title: FFaker::Movie.title

  rand(10).times do
    m.genres << Genre.order('Random()').first
  end
end

puts 'Creating shows'
rand(100).times do
  s = Show.create! title: FFaker::Movie.title

  rand(10).times do
    s.genres << Genre.order('Random()').first
  end

  rand(10).times do
    se = Season.create! number: rand(5), show: s

    rand(20).times do
      Episode.create! season: se
    end
  end
end

puts 'Creating admin'
create_admin!

puts 'Creating peasant'
create_peasant!

puts 'Creating clients and users'
20.times do
  client = Client.new
  client.name = FFaker::Name.name
  client.phone = FFaker::PhoneNumber.phone_number
  client.email = FFaker::Internet.email
  client.password = '123456'
  client.password_confirmation = '123456'
  client.save!

  Random.rand(5).times do
    user = User.create! name: FFaker::Name.name, client: client

    rand(25).times do
      user.movies << Movie.order('Random()').first
    end

    rand(25).times do
      user.episodes << Episode.order('Random()').first
    end
  end
end