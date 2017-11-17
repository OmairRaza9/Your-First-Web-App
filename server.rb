require 'sinatra'

get '/home' do

  erb :index
end

get '/portfolio' do

  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'html', 'css', 'ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']

  erb :about_me
end

get '/favourites' do
  @fav_links =  {'Facebook' => 'www.facebook.com', 'Google Finance' => 'www.google.com/finance', 'Youtube' => 'www.youtube.com' }

erb :favourites
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to '/portfolio'
end
