# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.delete_all

Song.create([{ title: 'Bluestone - Capetown', genre: 'trance',
  url: 'http://www.youtube.com/embed/pxSaVNZIUoM', startTime: '208' }])

Song.create([{ title: 'Bluestone - Capetown2', genre: 'trance',
  url: 'http://www.youtube.com/embed/pxSaVNZIUoM', startTime: '208' }])

Song.create([{ title: 'Zedd - Spectrum', genre: 'house',
  url: 'http://www.youtube.com/embed/wEp9MCQlAa4', startTime: '193' }])

Song.create([{ title: 'Zedd - Spectrum2', genre: 'house',
  url: 'http://www.youtube.com/embed/wEp9MCQlAa4', startTime: '193' }])

Song.create([{ title: 'Skrillex - Cinema', genre: 'dubstep',
  url: 'http://www.youtube.com/embed/LaIZ0mUJzr0', startTime: '78' }])

Song.create([{ title: 'Skrillex - Cinema2', genre: 'dubstep',
  url: 'http://www.youtube.com/embed/LaIZ0mUJzr0', startTime: '78' }])




