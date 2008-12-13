# werewolf.rb
require 'rubygems'
require 'sinatra'
require 'sequel'
require 'markaby_for_sinatra'

get '/stylesheets/:filename.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass params[:filename].to_sym
end

get '/' do
  markaby :index
end