require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/countries")

get("/") do
  @countries = Countries.all()
  erb(:index)
end

post("/countries") do
  country = params.fetch("country")
  country = Countries.new(country)
  countries.save()
  erb(:success)
end
