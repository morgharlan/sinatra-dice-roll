# /dice.rb

require "sinatra"
require "sinatra/reloader"

get("/") do
  <<-HTML
    <html>
      <head>
        <title>Dice Roll</title>
      </head>
      <body>
        <h1>Dice Roll</h1>
        <ul>
          <li><a href="https://vigilant-parakeet-pj9gvwvr6pgqcrq67-4567.app.github.dev/dice/2/6">Roll two 6-sided dice</a></li>
          <li><a href="https://vigilant-parakeet-pj9gvwvr6pgqcrq67-4567.app.github.dev/dice/2/10">Roll two 10-sided dice</a></li>
        </ul>
      </body>
    </html>
  HTML
end


get ("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You filled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d6</h1>
  <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d10</h1>
   <p>#{outcome}</p>"
end
