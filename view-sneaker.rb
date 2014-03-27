

module SneakerView

  class WelcomeMessage
    def self.print!
message =
<<-SCREEN

- - - - - - - - - - - - - - - - - - -
St. Alfred's Sneaker Inventory
- - - - - - - - - - - - - - - - - - -

  list -  display all sneakers
  find -  find all sneakers by id
  add  -  add a sneaker
  rem  -  remove a sneaker
  exit -  exit program!

- - - - - - - - - - - - - - - - - - -
- - - - - - - - - - - - - - - - - - -

SCREEN
      puts message
    end
  end

  class Prompt
    def self.print!
      print "Enter here: "
    end
  end


  class DisplaySneakers
    def self.print!(arrayofarrays)
      puts "- - - - - - - - - - - - - - - - - - -"
      puts "SA - Sneaker Inventory"
      puts "- - - - - - - - - - - - - - - - - - -\n"
      arrayofarrays.each do |array|
        puts array
        #puts array
      end
    end
  end

  class LoadMessage
  end


  class ExitMessage
    def self.print!
      puts "\n See ya later!\n"
    end
  end


end
