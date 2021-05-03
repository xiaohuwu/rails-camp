# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#

#============rails c history cat ~/.irb-history ===========


@local_info =  param.smart_watch_local_infos&.last
User.create(name:"xiaohu")
OfficalAccount.create("必顾养老管家")
OfficalAccount.create(name: "必顾养老管家公众号")
u = User.find 1
u.offical_accounts << OfficalAccount.find(1)
u.offical_accounts
OfficalAccount.first.users
reload!
OfficalAccount.first.users
exit
loc = Location.creat(province:'sc')
loc = Location.create(province:'sc')
loc = Location.create!(province:'sc')
loc.errors.messages
exit
loc = Location.create(province:'sc')
loc = Location.create!(province:'sc')
exit
Location
Location.create(name:"sc")
Location.create(province:"sc")
Location.create!(province:"sc")
loc = Location.create(province:"sc")
loc.errors
reload
reload!
loc = Location.create(province:"sc")
pwd
ls
u = User.create(name:'小虎')
u.location = loc
m = Moment.create(title:"今天天气很好")
m = Moment.create(title:"今天天气很好")
m.errors
m = Moment.create(title:"今天天气很好",user_id:1)
m = Moment.create(title:"今天天气很好",user_id:1)
reload!
reload!
loc = Location.create(province:"sc")
u = User.create(name:'小虎')
u.location = loc
m = Moment.create(title:"今天天气很好",user_id:1)
m.location = loca
m.location = loc
m.location
u = User.find 1
u.location
u.location
User.all
u = User.last
u.location = loc
loc = Location.create(province:"重庆")
m
m.location = loc
u.location = loc
u
u.location = (Locatoin.find 1)
u.location = (Location.find 1)
m
m.location = (Location.find 2)
Location.all
Location.find 2
Location.find 1
Location.find 2
Location.destroy
Location.last.destroy
m
m.location.create(province:"四川")
m.location.create(province:"四川")
m.location.new(province:"四川")
m.location
reload
reload!
m = Monent.find 1
m = MoMent.find 1
m = Moment.find 1
m.location
m.location.create(province:"成都")
m.locations.create(province:"成都")
m.create_location(province:"成都")
