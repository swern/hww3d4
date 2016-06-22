

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

end