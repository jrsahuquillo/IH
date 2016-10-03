# SHOPPING CART
## Iteration Two



class ShoppingCart
  def initialize
    @items = []
  end

  	def add_item(item)
  		#Add your item to @items
  		@items.push(item)
  	end

  	def checkout
  		sum = 0
  		@items.each do |item , x|
  			sum = sum + x.to_i
  			puts sum
  		end
  	end
end

class Item 
  attr_reader :name, :price
  def initialize(name, price)

      @name = name
      @price = price
  end

  def price
      #Your beautiful code goes here
      #By default, items have no discount
      @price
  end
end


class Houseware < Item
  def price
      #Hmmm maybe this changes somehow..
      #If Houseware item price is greater than 100, have a 5% discount
      if @price > 100
      	@price = 0.95 * @price
      end
      @price
  end
end

class Fruit < Item
  def price
      #Something special may go here too...
      #Saturdays and Sundays have a 10% discount
      if Time.now.strftime("%A") == "Saturday" || Time.now.strftime("%A") == "Sunday"
      	@price = 0.90 * @price
      end
      @price
  end
end



joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.checkout



=begin

#Creation of a shopping list array with all items, fruits and housewares, adding everyone.
shopping_list = []
shopping_list.push(Fruit.new("Banana", 10))
shopping_list.push(Fruit.new("Orange Juice", 10))
shopping_list.push(Item.new("Rice", 1))
shopping_list.push(Houseware.new("Vacuum Cleaner", 150))
shopping_list.push(Item.new("Anchovies", 2))

#Shows the list of every item with corresponding discounted price (if proceeds)
shopping_list.each { |item| puts item.name.to_s() +" "+ item.price.to_s() + " €/$"}
=end


=begin
banana = Fruit.new("Banana", 10)
orange_juice = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)
=end

