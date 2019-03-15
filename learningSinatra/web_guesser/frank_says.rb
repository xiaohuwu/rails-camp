require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)
get '/hello' do
  # 匹配 "GET /hello/foo" 和 "GET /hello/bar"
  # params['name'] 的值是 'foo' 或者 'bar'
  #"The SECRET NUMBER IS #{rand(101)}!"

  guess = params["guess"]
  logger.info("[SECRET_NUMBER]#{SECRET_NUMBER}")
  message = check_guess(guess)
  erb :index, :locals => {:number => guess,:message=> message}
end

get '/say/*/to/*' do
  # matches /say/hello/to/world
  logger.info("params['splat']#{params}")
end


def check_guess(guess)
 return  guess.to_i > SECRET_NUMBER ? "too bigger" :(guess.to_i < SECRET_NUMBER ? 'too small' :'equal')
end