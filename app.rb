require 'bundler'
Bundler.require
require './lib/class_compliments'

class App < Sinatra::Application

  get '/' do 
    first = Compliments.new.messages
    var = first.sample unless first == var
    @message_post = var[0]
    @back_color = var[1]
    @image = var[2]
    @font_color = var[3]
    erb:compliment
  end


end