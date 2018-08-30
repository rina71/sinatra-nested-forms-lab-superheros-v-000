require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do
    erb :team
  end
   post'/teams' do
     @team = Team.new
    #  (name: params[:team][:name], motto: params[:team][:motto])
     @team.name = params[:team][:name]
     @team.motto = params[:team][:motto]

     heros = params[:team][:heros]
  

     erb :super_hero
   end

end
