require_relative('.models/pet_shops')
require_relative('./models/pets')
require_relative('sql_runner')

runner = SqlRunner.new({dbname: 'pet_stores', host:'localhost'})

pet_shop1 = PetShop.new({'name' => 'Happy Pets', 'address' => '121 West George Stree', 'type' => 'boring'}, runner)
pet_shop2 = PetShop.new({'name' => 'Sad Pets', 'address' => '121 West George Stree', 'type' => 'exotic'}, runner)

pet_shop1.save()
pet_shop2.save()

pet1 = Pet.new({'name' => 'Cookie', 'type' => 'Dog', 'store_id' => pet_shop1.id }, runner)
pet2 = Pet.new({'name' => 'Trevor', 'type' => 'Frog', 'store_id' => pet_shop1.id}, runner)
pet3 = Pet.new({'name' => 'Fawkes', 'type' => 'Phoenix', 'store_id' => pet_shop2.id}, runner)


pet1.save()
pet2.save()
pet3.save()

# binding.pry
# nil
