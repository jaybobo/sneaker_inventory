
require 'sqlite3'

$db = SQLite3::Database.open 'sneaker.db' #user could pass this through the CLI



class Inventory
end




class Sneaker

  attr_reader :id
  attr_accessor :brand, :name, :cost

  def initialize(data)
    # @id = data[:id]
    @brand = data[:brand]
    @name = data[:name]
    @cost = data[:cost]
    @created_at = data[:created_at]
    @updated_at = data[:updated_at]
  end


  def defaults
    {
      :brand => "Default",
      :name => 'Sneaker',
      :cost => '0',
      # :created_at => Time.now,
      # :updated_at => Time.now
    }
  end


  COLUMNS = [:brand, :name, :cost, :created_at, :updated_at]

  def self.display_all
    $db.execute("SELECT * FROM sneakers;")
  end

  def self.where(id)
    result = []
    $db.execute("SELECT * FROM sneakers WHERE id = ?", id) do |row|
      result << Sneaker.new(Hash[COLUMNS.zip(row)])
    end
    result
  end

  def self.add_sneaker(brand, name, cost)
    $db.execute("INSERT INTO sneakers (brand, name, cost, created_at, updated_at) VALUES (?, ?, ?, datetime('now'), datetime('now'));", brand, name, cost)
  end

  def self.update_sneaker_price(id, cost)
    $db.execute("UPDATE sneakers SET cost = ? WHERE id = ?;", cost, id)
  end

  def self.remove_sneaker(id)
    $db.execute("DELETE FROM sneakers WHERE id = ?", id)
  end

end

#p Sneaker.display_all
#p Sneaker.where(1)
#p Sneaker.add_sneaker("Vans", "Era", 50)
#Sneaker.remove_sneaker(4)
#Sneaker.update_sneaker_price(1, 75)
#p Sneaker.display_all
