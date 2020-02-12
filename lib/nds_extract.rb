$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  hash = { directors_name => :worldwide_gross}

  counter = 0 
  while counter < nds.length do 
    movies = nds[counter][:movies]
    directors_name = nds[counter][:name]
    
    counter2 = 0 
    while counter2 < movies.length do 
      # binding.pry 
      worldwide_gross = nds[counter][:movies][0][:worldwide_gross]
      counter2 += 1 
    end 
    
    counter += 1 
  end 
  nil
end
