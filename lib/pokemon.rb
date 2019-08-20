class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
      db.execute( "INSERT INTO pokemon ( name, type ) VALUES ( ?, ? )", [name, type])#Instead, you should use bound parameters for any variable data that you are passing into your SQL statement:
  end

   
end
