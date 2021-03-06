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

ActiveRecord::Base.transaction do

  puts 'Cleaning database'
  MovieVote.find_each(&:destroy)
  ShowVote.find_each(&:destroy)
  User.find_each(&:destroy)
  Client.find_each(&:destroy)
  Movie.find_each(&:destroy)
  Episode.find_each(&:destroy)
  Season.find_each(&:destroy)
  Show.find_each(&:destroy)
  Genre.find_each(&:destroy)

  puts 'Creating genres'
  rand(50).times do
    Genre.create! title: Faker::Book.genre
  end

  puts 'Creating movies'
  rand(50).times do
    m = Movie.create! title: FFaker::Movie.title

    rand(10).times do
      m.genres << Genre.order('Random()').first
    end
  end

  puts 'Creating shows'
  rand(50).times do
    s = Show.create! title: FFaker::Movie.title

    rand(10).times do
      s.genres << Genre.order('Random()').first
    end

    rand(10).times do
      se = Season.create! number: rand(5), show: s

      rand(20).times do
        Episode.create! season: se, number: rand(10) + 1, title: FFaker::Movie.title
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
  end

  Client.find_each do |client|
    Random.rand(5).times do
      user = User.create! name: FFaker::Name.name, client: client

      rand(25).times do
        movie = Movie.order('Random()').first
        user.movies << movie

        if FFaker::Boolean.maybe
          MovieVote.create! user: user,
                            movie: movie,
                            rating: Random.rand(4) + 1
        end
      end

      rand(25).times do
        episode = Episode.order('Random()').first
        user.episodes << episode

        if FFaker::Boolean.maybe
          ShowVote.create! user: user,
                           show: episode.season.show,
                           rating: Random.rand(4) + 1
        end
      end
    end
  end
end
