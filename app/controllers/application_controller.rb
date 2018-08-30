require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do
    erb :team
  end
   post'/teams' do
     @team = Team.new
     @team.name = params[:team][:name]
     @team.motto = params[:team][:motto]
    #  @team = params["team"]["name"]
    #  @motto = params[:team][:motto]
     @hero = Hero.new

     erb :super_hero
   end

end
