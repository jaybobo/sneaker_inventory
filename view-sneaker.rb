

module SneakerView

  class WelcomeMessage
    def self.print!
message =
<<-SCREEN

- - - - - - - - - - - - - - - - - - -
St. Alfred's Sneaker Inventory
- - - - - - - - - - - - - - - - - - -

  list -  display all sneakers
  find -  find a sneaker by id
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
        p array
        #puts array
      end
    end
  end

  class LoadMessage
    def self.print!
      print "\nLoading "
      5.times { print "."; sleep 0.3}
      puts "\n"
    end
  end

  class RequestSneakerID
    def self.print!
      puts "- - - - - - - - - - - - - - - - - - -"
      puts "Please enter your sneaker's ID?"
      puts "- - - - - - - - - - - - - - - - - - -\n"
    end
  end

  class DisplaySingleSneaker
    def self.print!(object)
      obj = object[0]
      p obj
      puts "#{obj.brand} #{obj.name} - #{obj.cost}"
    end
  end

  class ExitMessage
    def self.print!
      puts "\n See ya later!\n"
      sleep 1.0
    end
  end


end
