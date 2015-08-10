
require 'Sinatra'
require_relative '../models/dinners.rb'
require_relative '../models/pictures.rb'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    pictures = ['https://scontent-lga1-1.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/11870757_10155941466980529_1245318787592394784_n.jpg?oh=9103c84634c62926ef0723c6c586205a&oe=5651B7E1',
         'https://scontent-lga1-1.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/11742976_10155864720450529_4213957741043053587_n.jpg?oh=8acb677095ef38fba1e0e5a26f1f89c6&oe=5640DD0F']
    @pictureone = get_picture(pictures)
    @picturetwo = get_picture(pictures)
    erb :index
  end

  get '/dinners.erb' do
    erb :dinners
  end

  get '/pictures.erb' do
    erb :pictures
  end

  get '/songs.erb' do
    erb :songs
  end

  get '/light.erb' do
    erb :light
  end

  get '/low.erb' do
    erb :low
  end

  get '/fancy.erb' do
    erb :fancy
  end

  get '/comfort.erb' do 
    erb :comfort
  end

  get '/desert.erb' do
    erb :desert
  end

  get '/snacks.erb' do
    erb :snacks
  end

end
