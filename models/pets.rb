

class Pet
  attr_accessor(:name, :type, :id, :store_id)

  def initialize( options, runner )
    @name = options['name']
    @type = options['type']
    @id = options['id'].to_i
    @store_id = options['store_id'].to_i
    @runner = runner
  end


  def save 
    sql = "INSERT INTO pets (name, type, store_id) VALUES( '#{@name}', '#{@type}', '#{@store_id}')"
    @runner.run(sql)
  end
end