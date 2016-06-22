

class PetShop
  attr_accessor(:name, :address, :type, :id)

  def initialize( options, runner )
    @name = options['name']
    @address = options['address']
    @type = options['type']
    @id = optioins['id'].to_i
    @runner = runner
  end


  def save 
    sql = "INSERT INTO pet_stores (name, address, type) VALUES( '#{@name}', '#{@address}', '#{@type})"
    @runner.run(sql)
  end

  def albums()
    #query the database to get its albums' data
    sql = "SELECT * FROM pets WHERE store_id = #{@id}"
     #make album objects
     pets_data = @runner.run(sql)
     pets_array = pets_data.map {|pet| Album.new(pet, @runner)}
     return album_array
  end
end