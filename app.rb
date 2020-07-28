require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    pig_latin = PigLatinizer.new
    @pig_latin = pig_latin.piglatinize.new(params[:user_phrase])
    erb :result
  end
end