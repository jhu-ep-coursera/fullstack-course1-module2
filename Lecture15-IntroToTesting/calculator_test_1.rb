require 'test/unit'
require_relative 'calculator'

class CalculatorTest < Test::Unit::TestCase
  def setup
  	@calc = Calculator.new('test')
  end

  def test_addition
    assert_equal 4, @calc.add(2, 2)
  end

  def test_subtraction
    assert_equal 2, @calc.subtract(4, 2)
  end

  def test_devision
    assert_equal 2, @calc.devide(4, 2)
  end
end
