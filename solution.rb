require 'sinatra'
$contador = 0

get '/' do
  @agente = request.user_agent
  erb :index
end
