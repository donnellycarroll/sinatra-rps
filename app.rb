require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:homepage)
end

get("/rock") do
  @our_move = "rock"
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "scissors"
  @outcome = "won"
  else
    @outcome = "lost"
  end

erb(:zebra)
end

get("/paper") do
  @our_move = "paper"
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "scissors"
  @outcome = "lost"
  else
    @outcome = "tied"
  end

erb(:zebra)
end

get("/scissors") do
  @our_move = "scissors"
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "scissors"
  @outcome = "tied"
  else
    @outcome = "won"
  end

erb(:zebra)
end
