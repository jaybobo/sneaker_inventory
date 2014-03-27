require_relative "model-sneaker"
require_relative "view-sneaker"



class SneakerController
  #s = Sneaker.new

  def self.run!
    until
      SneakerView::LoadMessage.print!
      SneakerView::WelcomeMessage.print!
      SneakerView::Prompt.print!
      user_input = gets.chomp

      case user_input
      when "list"
        SneakerView::LoadMessage.print!
        SneakerView::DisplaySneakers.print!(Sneaker.display_all)
      when "find"
        SneakerView::LoadMessage.print!
        SneakerView::RequestSneakerID.print!
        SneakerView::Prompt.print!
        user_input = gets.chomp.to_i
        SneakerView::DisplaySingleSneaker.print!(Sneaker.where(user_input))
      when "add"

        Sneaker.add_sneaker()

      when "rem"

      when "exit"
        SneakerView::ExitMessage.print!
        Process.exit(0)
      end
    end
  end

end


SneakerController.run!
