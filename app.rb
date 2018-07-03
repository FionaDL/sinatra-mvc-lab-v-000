require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end
  post "/piglatinize" do
  user_input = PigLatinizer.new
  @piglatin = user_input.piglatinize(params[:user_phrase])
    erb :user_input_show
  end
end
