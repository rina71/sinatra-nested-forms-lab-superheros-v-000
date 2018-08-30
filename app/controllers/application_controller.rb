require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do
    erb :team
  end
   post'/teams' do
     @team = Team.new(params[:team])

    #  @team.name = params[:team][:name]
    #  @team.motto = params[:team][:motto]

     heros = params[:team][:heros]
     @heros = heros.collect do |hero|
       a = Hero.new
       a.name = params[:team][:heros][:name]
       a.power = params[:team][:heros][:power]
    #    a.bio = params[:team][:heros][:bio]
     end

     erb :super_hero
   end

end
