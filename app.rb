require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'


# get '/' do
#   puts "Gotta Catch 'Em All!'"
# end

get '/pokemon' do
  @pokemon = Pokemon.all.order(:name)
  erb :"pokemon/index"
end

get '/pokemon/new' do
  erb :"pokemon/new"
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

post '/pokemon' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemon/edit")
end

put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemon/#{@pokemon.id}")
end
