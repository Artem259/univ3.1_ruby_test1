require 'minitest/autorun'
require_relative '../task2.rb'



class Test_task_2 < Minitest::Test
  def setup
    @arr = []
    @arr << Car.new(0,"Brand1", "Model1_1", 2007, "white", 1256412, "AB-330689")
    @arr << Car.new(1,"Brand1", "Model1_2", 2010, "orange", 1457854, "DC-125689")
    @arr << Car.new(2,"Brand1", "Model1_2", 2012, "black", 487855, "DC-145874")
    @arr << Car.new(3,"Brand1", "Model1_2", 2009, "black", 99999, "KF-278645")

    @arr << Car.new(4,"Brand2", "Model2_3", 2007, "red", 893838, "RT-145852")
    @arr << Car.new(5,"Brand2", "Model2_1", 2007, "yellow", 1759675, "LO-149658")

    @arr << Car.new(6,"Brand3", "Model3_1", 2008, "green", 783938, "GT-897525")
    @arr << Car.new(7,"Brand3", "Model3_2", 2007, "grey", 2154789, "GT-120047")
    @arr << Car.new(8,"Brand3", "Model3_2", 2010, "black", 1457896, "GH-124578")
    @arr << Car.new(9,"Brand3", "Model3_3", 2003, "black", 1400254, "RT-003501")
  end

  def test_1
    model = "Brand3"
    res = @arr.select{|i| i.brand == model}.map{|i| i.id}
    assert_equal [6,7,8,9], res
    print "a) ", res, "\n"
  end
  def test_2
    model = "Model1_2"
    n_years = 10
    curr_year = 2022
    res = @arr.select{|i| i.model == model && i.year+n_years < curr_year}.map{|i| i.id}
    assert_equal [1,3], res
    print "b) ", res, "\n"
  end
  def test_3
    year = 2007
    min_price = 1000000
    res = @arr.select{|i| i.year == year && i.price > min_price}.map{|i| i.id}
    assert_equal [0,5,7], res
    print "c) ", res, "\n"
  end
end
