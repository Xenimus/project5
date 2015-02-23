# app.rb
require 'sinatra'
require 'holidapi'



class MyWebApp < Sinatra::Base
  get '/' do
    @holidays = HolidApi.get(month: Time.now.month)
    @birthyear = HolidApi.get(month: 5,year: 1993)
    erb :index
  end
end
