# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.delete_all

Song.create([{ title: 'Bluestone - Capetown', genre: 'trance',
  url: 'http://www.youtube.com/watch?v=pxSaVNZIUoM', startTime: '3m29s' }])

Song.create([{ title: 'Zedd - Spectrum', genre: 'house',
  url: 'http://www.youtube.com/watch?v=wEp9MCQlAa4', startTime: '2m15s' }])

Song.create([{ title: 'Skrillex - Cinema', genre: 'dubstep',
  url: 'http://www.youtube.com/watch?v=LaIZ0mUJzr0', startTime: '1m04s' }])