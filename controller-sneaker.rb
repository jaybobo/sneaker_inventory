require_relative "model-sneaker"
require_relative "view-sneaker"



class SneakerController
  s = Sneaker.new

  def self.run!
    until
      SneakerView::WelcomeMessage.print!
      SneakerView::Prompt.print!
      user_input = gets.chomp

      case user_input
      when "list"
        SneakerView::DisplaySneakers.print!() #where are these coming from?#Sneaker.display_all)
      when "find"

      when "add"

      when "rem"

      when "exit"
        SneakerView::ExitMessage.print!
        sleep 2.0
        Process.exit(0)
      end
    end
  end

end


SneakerController.run!
