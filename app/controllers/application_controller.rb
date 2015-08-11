
require 'Sinatra'
require_relative '../models/dinners.rb'
require_relative '../models/pictures.rb'

class ApplicationController < Sinatra::Base
  pictures = ['https://scontent-lga1-1.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/11870757_10155941466980529_1245318787592394784_n.jpg?oh=9103c84634c62926ef0723c6c586205a&oe=5651B7E1',
              'https://scontent-lga1-1.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/11742976_10155864720450529_4213957741043053587_n.jpg?oh=8acb677095ef38fba1e0e5a26f1f89c6&oe=5640DD0F',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xap1/v/t1.0-9/10460229_10152267048048321_4857718337594562807_n.jpg?oh=bef8bf4dd9fb06a6e75f6305b389a03b&oe=5638076E',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xft1/v/t1.0-9/10494638_10152220304548321_2762531741787773416_n.jpg?oh=e68c7dd81ba242b29686d9750c3e99c4&oe=5638A712',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xfp1/v/t1.0-9/10298952_10154177658605529_6844375543843193480_n.jpg?oh=8c55c4b1ac6f7e5125e0b8f7e9207450&oe=564934BC',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xtp1/v/t1.0-9/10273986_10154179409340383_8500849802345226581_n.jpg?oh=9cf899b8639bb1eb1539b57015eef5ef&oe=5651C0A4',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xaf1/v/t1.0-9/10308385_10203647812300309_1884441837583523423_n.jpg?oh=68f8dc4ddd510a36ff82bdc9a814ab4b&oe=56484D35',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xpf1/v/t1.0-9/1601026_10203462710270933_903337441693519739_n.jpg?oh=5fa4fc6823b8cc68e77dc458412f92d5&oe=5645CF4B',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xfp1/v/t1.0-9/988430_10203500669381828_4875555470222263191_n.jpg?oh=a86bf0a11fd50c586d82def73977b99f&oe=56377CBE',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xfp1/v/t1.0-9/10154950_10154002278935529_392360117_n.jpg?oh=07365157796bdf9434b79e87467f0ec6&oe=5637AC7F',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-prn2/v/t1.0-9/1959689_10152008524694227_1918976425_n.jpg?oh=5289d6d7e7f40baaa7da071980532838&oe=5681068E',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xft1/v/t1.0-9/1888757_10153905960345529_1736055161_n.jpg?oh=8527e98c83d8dc771bb2e77c23e2e1f0&oe=563A7557',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xat1/v/t1.0-9/1545644_659700650740102_1695592002_n.jpg?oh=0469d6fea8eecdd192ee5f38be584885&oe=564D1E22',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xfp1/v/t1.0-9/1467282_10153580347225529_1447883144_n.jpg?oh=7036621cf2f527d9feb9ea3e91bfc7be&oe=56363E38',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xfp1/v/t1.0-9/1798505_10153821068705383_658414935_n.jpg?oh=a5abefe42eda6e59fd0719cebbc16956&oe=567A0CFD',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-xat1/v/t1.0-9/1378656_10153385867280383_2031738685_n.jpg?oh=dc970e3d2664f46339dbe88ab3a6d3ba&oe=563F7C3F',
              'https://scontent.fphl1-1.fna.fbcdn.net/hphotos-frc3/v/t1.0-9/600345_10153382275870383_1188961661_n.jpg?oh=e6a3ea2ceee2d1b92419ac921aed4e8d&oe=563FA41F',

            ]
    
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    @pictureone = get_picture(pictures)
    @picturetwo = get_picture(pictures)
    erb :index
  end

  get '/dinners.erb' do
    erb :dinners
  end

  get '/pictures.erb' do
    @pictures = pictures
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

  get '/dessert.erb' do
    erb :desert
  end

  get '/snacks.erb' do
    erb :snacks
  end

end
