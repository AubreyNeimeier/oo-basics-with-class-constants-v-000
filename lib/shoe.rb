class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
  end

  def brand= (brand)
    @brand = brand
    BRANDS << brand
    BRANDS.each do |brand|
      BRANDS.delete_if {|brand| @brand == brand}
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
