# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
User.create([
  { email:'cvc1230@gmail.com', password_digest:'password', myplaces:'1'}
  ])
User.create([
  {email:'parkjimin@bts.com', password_digest:'password', myplaces:'1'}
  ])

  Place.destroy_all
  Place.create([
    {title:'Upstairs', business:'Itaewon', description:'Ask to charge behind the bar', lat:'40.730610', lng:'-73.935242',upvote:'4',downvote:'2'}
    ])
    Place.create([
      {title:'Upstairs', business:'Space Billiards', description:'Ask to charge behind the bar', lat:'40.730610', lng:'-75.935242',upvote:'6',downvote:'2'}
      ])
