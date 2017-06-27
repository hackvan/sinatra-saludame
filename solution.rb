require 'sinatra'

get '/' do
  unless nombre = params[:nombre]
    nombre = "desconocido"
  end
  nombre = "desconocido" if nombre.empty?
  "<h1>Hola #{nombre}</h1>"
end

get '/makers/:nombre' do
  "<h1>Hola #{params[:nombre].capitalize}!</h1>"
end
