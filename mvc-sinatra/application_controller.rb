require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
#link to about page
  get '/about' do
    erb :about
  end

#post route
  post '/calculate' do
    user_bday = params[:birthday]
    @user_days = years_alive(user_bday)
    user_phrase = params[:phrase]
    @user_kloss = klossify(user_phrase)
    @user_pig = to_pig_latin(user_phrase)
    @both = klossify(@user_pig)
    user_search = params[:search]
    @gif = get_gif(user_search) 
    erb :results
  end

end