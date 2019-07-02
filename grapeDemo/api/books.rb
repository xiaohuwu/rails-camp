require "sinatra"
get '/' do
  p User.all
end
