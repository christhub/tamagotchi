require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")

get("/") do
  erb(:index)
end

get("/feed") do
food = params.fetch('')
end
