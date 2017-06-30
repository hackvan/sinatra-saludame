require 'sinatra'

get '/' do
  token = request.env["HTTP_PERMISO"]
  respuesta = "Sin Permiso"
  if token == "soy-un-token-secreto"
    respuesta = "Si lo logramos!"
  end
  respuesta
end

# curl -XGET -H "permiso: soy-un-token-secreto" "http://localhost:4567/"
