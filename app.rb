require 'bundler'
Bundler.require
require './lib/class_compliments'

class App < Sinatra::Application

  get '/compliments' do 
    var = Compliments.new.messages.sample
    @message_post = var[0]
    @back_color = var[1]
    @image = var[2]
    @font_color = var[3]
    erb:compliment
  end


end