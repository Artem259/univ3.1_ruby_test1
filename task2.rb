class Car
  attr_accessor :id, :brand, :model, :year, :color, :price, :number

  def initialize(id, brand, model, year, color, price, number)
    @id = id
    @brand = brand
    @model = model
    @year = year
    @color = color
    @price = price
    @number = number
  end

  def to_s
    id.to_s
  end
end
