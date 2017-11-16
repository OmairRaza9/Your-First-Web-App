require 'sinatra'

get '/home' do

  erb :index
end

get '/index' do

  erb :gallery
end
