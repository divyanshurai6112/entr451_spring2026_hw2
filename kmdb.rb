# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Delete existing data, so you'll start fresh each time this script is run.
Role.destroy_all
Movie.destroy_all
Actor.destroy_all
Studio.destroy_all
Agent.destroy_all

# Generate models and tables, according to the domain model.
# (See app/models/ for the model files and db/migrate/ for the migration files.)

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.

# -- Studios --
warner = Studio.new
warner["name"] = "Warner Bros."
warner.save

# -- Agents --
agent = Agent.new
agent["name"] = "CAA"
agent.save

# -- Movies --
batman_begins = Movie.new
batman_begins["title"]         = "Batman Begins"
batman_begins["year_released"] = 2005
batman_begins["mpaa_rating"]   = "PG-13"
batman_begins["studio_id"]     = Studio.find_by({ "name" => "Warner Bros." })["id"]
batman_begins.save

dark_knight = Movie.new
dark_knight["title"]         = "The Dark Knight"
dark_knight["year_released"] = 2008
dark_knight["mpaa_rating"]   = "PG-13"
dark_knight["studio_id"]     = Studio.find_by({ "name" => "Warner Bros." })["id"]
dark_knight.save

dark_knight_rises = Movie.new
dark_knight_rises["title"]         = "The Dark Knight Rises"
dark_knight_rises["year_released"] = 2012
dark_knight_rises["mpaa_rating"]   = "PG-13"
dark_knight_rises["studio_id"]     = Studio.find_by({ "name" => "Warner Bros." })["id"]
dark_knight_rises.save

# -- Actors --
christian_bale = Actor.new
christian_bale["name"]     = "Christian Bale"
christian_bale["agent_id"] = Agent.find_by({ "name" => "CAA" })["id"]
christian_bale.save

michael_caine = Actor.new
michael_caine["name"] = "Michael Caine"
michael_caine.save

liam_neeson = Actor.new
liam_neeson["name"] = "Liam Neeson"
liam_neeson.save

katie_holmes = Actor.new
katie_holmes["name"] = "Katie Holmes"
katie_holmes.save

gary_oldman = Actor.new
gary_oldman["name"] = "Gary Oldman"
gary_oldman.save

heath_ledger = Actor.new
heath_ledger["name"] = "Heath Ledger"
heath_ledger.save

aaron_eckhart = Actor.new
aaron_eckhart["name"] = "Aaron Eckhart"
aaron_eckhart.save

maggie_gyllenhaal = Actor.new
maggie_gyllenhaal["name"] = "Maggie Gyllenhaal"
maggie_gyllenhaal.save

tom_hardy = Actor.new
tom_hardy["name"] = "Tom Hardy"
tom_hardy.save

joseph_gordon_levitt = Actor.new
joseph_gordon_levitt["name"] = "Joseph Gordon-Levitt"
joseph_gordon_levitt.save

anne_hathaway = Actor.new
anne_hathaway["name"] = "Anne Hathaway"
anne_hathaway.save

# -- Roles: Batman Begins --
batman_begins_movie = Movie.find_by({ "title" => "Batman Begins" })

role = Role.new
role["movie_id"]       = batman_begins_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Christian Bale" })["id"]
role["character_name"] = "Bruce Wayne"
role["billing_order"]  = 1
role.save

role = Role.new
role["movie_id"]       = batman_begins_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Michael Caine" })["id"]
role["character_name"] = "Alfred"
role["billing_order"]  = 2
role.save

role = Role.new
role["movie_id"]       = batman_begins_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Liam Neeson" })["id"]
role["character_name"] = "Ra's Al Ghul"
role["billing_order"]  = 3
role.save

role = Role.new
role["movie_id"]       = batman_begins_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Katie Holmes" })["id"]
role["character_name"] = "Rachel Dawes"
role["billing_order"]  = 4
role.save

role = Role.new
role["movie_id"]       = batman_begins_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Gary Oldman" })["id"]
role["character_name"] = "Commissioner Gordon"
role["billing_order"]  = 5
role.save

# -- Roles: The Dark Knight --
dark_knight_movie = Movie.find_by({ "title" => "The Dark Knight" })

role = Role.new
role["movie_id"]       = dark_knight_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Christian Bale" })["id"]
role["character_name"] = "Bruce Wayne"
role["billing_order"]  = 1
role.save

role = Role.new
role["movie_id"]       = dark_knight_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Heath Ledger" })["id"]
role["character_name"] = "Joker"
role["billing_order"]  = 2
role.save

role = Role.new
role["movie_id"]       = dark_knight_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Aaron Eckhart" })["id"]
role["character_name"] = "Harvey Dent"
role["billing_order"]  = 3
role.save

role = Role.new
role["movie_id"]       = dark_knight_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Michael Caine" })["id"]
role["character_name"] = "Alfred"
role["billing_order"]  = 4
role.save

role = Role.new
role["movie_id"]       = dark_knight_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Maggie Gyllenhaal" })["id"]
role["character_name"] = "Rachel Dawes"
role["billing_order"]  = 5
role.save

# -- Roles: The Dark Knight Rises --
dark_knight_rises_movie = Movie.find_by({ "title" => "The Dark Knight Rises" })

role = Role.new
role["movie_id"]       = dark_knight_rises_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Christian Bale" })["id"]
role["character_name"] = "Bruce Wayne"
role["billing_order"]  = 1
role.save

role = Role.new
role["movie_id"]       = dark_knight_rises_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Gary Oldman" })["id"]
role["character_name"] = "Commissioner Gordon"
role["billing_order"]  = 2
role.save

role = Role.new
role["movie_id"]       = dark_knight_rises_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Tom Hardy" })["id"]
role["character_name"] = "Bane"
role["billing_order"]  = 3
role.save

role = Role.new
role["movie_id"]       = dark_knight_rises_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Joseph Gordon-Levitt" })["id"]
role["character_name"] = "John Blake"
role["billing_order"]  = 4
role.save

role = Role.new
role["movie_id"]       = dark_knight_rises_movie["id"]
role["actor_id"]       = Actor.find_by({ "name" => "Anne Hathaway" })["id"]
role["character_name"] = "Selina Kyle"
role["billing_order"]  = 5
role.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
movies = Movie.all.order("year_released")
for movie in movies
  studio = Studio.find_by({ "id" => movie["studio_id"] })
  puts "#{movie["title"]}  #{movie["year_released"]}  #{movie["mpaa_rating"]}  #{studio["name"]}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
roles = Role.all.order("movie_id, billing_order")
for role in roles
  movie = Movie.find_by({ "id" => role["movie_id"] })
  actor = Actor.find_by({ "id" => role["actor_id"] })
  puts "#{movie["title"]}  #{actor["name"]}  #{role["character_name"]}"
end

# Prints a header for the agent's list of represented actors output
puts ""
puts "Represented by agent"
puts "===================="
puts ""

# Query the actor data and loop through the results to display the agent's list of represented actors output.
actors = Actor.where("agent_id is not null")
for actor in actors
  puts actor["name"]
end