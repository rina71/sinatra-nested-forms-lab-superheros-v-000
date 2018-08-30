require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do
    erb :team
  end
   post'/teams' do
     @team = Team.new(params[:team])
     heros = params[:team][:heros]
     @heros = heros.collect do |hero|
       Hero.new(hero)
     end

     erb :super_hero
   end

end
