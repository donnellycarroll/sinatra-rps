require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  comp_move = moves.sample
  
  if comp_move == "rock"
    outcome = "tied"
  elsif comp_move == "scissors"
    outcome = "won"
  else
    outcome = "lost"
  end

"
  <h2>
    We played rock!
  </h2>

  <h2>
   They played #{comp_move}!
  </h2>

  <h2>
   We tied!
  </h2>
  "
end
