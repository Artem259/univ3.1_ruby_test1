require 'minitest/autorun'
require_relative '../task1.rb'

class Test_task_1 < Minitest::Test
  def test_1
    assert_equal 3, func_f(10, 1, 2, 3)
  end
  def test_2
    assert_equal 1, func_f(3.75, -5, 2, 3.5)
  end
  def test_3
    assert_equal -38, func_f(-2.6, 5.6, -3, -2.2)
  end
end
