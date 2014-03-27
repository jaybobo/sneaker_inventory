
require 'sqlite3'

$db = SQLite3::Database.new("sneaker.db")

module SneakerDB
  def self.setup
    $db.execute (
<<-SQL
    CREATE TABLE sneakers (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      brand VARCHAR(64) NOT NULL,
      name VARCHAR(64) NOT NULL,
      cost INTEGER NOT NULL,
      created_at DATETIME NOT NULL,
      updated_at DATETIME NOT NULL
      );
SQL
)
  end

  def self.seed
    $db.execute (
<<-SQL
    INSERT INTO sneakers (
      brand, name, cost, created_at, updated_at)
      VALUES (
      'Nike',
      'Air Max',
      125.00,
      datetime('now'),
      datetime('now')
        );
SQL
)
  end

end


SneakerDB.setup
SneakerDB.seed



#database
#create db
#insert csv file into database
  #design schema
  #design find methods
    #find by id
    #find by shoe_name
  #design insert methods
  #design update methods
  #design delete methods (by id)


#OOP

#model
  #shoe objects
  #create shoe objects & insert with SQL


#controller
  #through CLI loop
  #add
  #update
  #delete

#module print


