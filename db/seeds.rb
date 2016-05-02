# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# peliculas = [['Gremlins', 'A small town is besieged by some furry and not-so-cute little creatures after a young man ignores the warnings of a wise elder regarding their care and feeding'],
#              ['The Avengers', 'Earth mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity'],
#              ['Batman: The Killing Joke', 'As Batman hunts for the escaped Joker, the Clown Prince of Crime attacks the Gordon family to prove a diabolical point mirroring his own fall into madness.']]


peliculas = [{nombre: 'Gremlins',
              fecha: Time.new(1984),
              sinopsis: 'A small town is besieged by some furry and not-so-cute little creatures after a young man ignores the warnings of a wise elder regarding their care and feeding'},

             {nombre: 'The Avengers',
              fecha: Time.new(2012),
              sinopsis: 'Earth mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity'},

             {nombre: 'Batman: The Killing Joke',
              fecha: Time.new(2016),
              sinopsis: 'As Batman hunts for the escaped Joker, the Clown Prince of Crime attacks the Gordon family to prove a diabolical point mirroring his own fall into madness.'}]

Pelicula.all.each { |pelicula| pelicula.destroy }

peliculas.each do |pelicula|
  Pelicula.create(pelicula)
end
