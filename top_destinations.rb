before do
  headers "Content-Type" => "text/html; charset=utf-8"
end

get '/' do
  @destinations = Parser.parse('public/destinations.json')
  haml :index
end