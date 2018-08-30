require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do
    erb :team
  end
   post'/teams' do
     @team = Team.new(params[:team])
     @team.name = params[:team][:name]
     @team.motto = params[:team][:motto]

     heros = params[:team][:heros]
     heros.each do |hero|
       Hero.new(hero)
     end
     erb :super_hero
   end

end
