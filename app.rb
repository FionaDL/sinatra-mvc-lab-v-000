require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end
  post "/" do
  @user_input = PigLatinizer.new(params[0])

    erb :user_input_show
  end
end
