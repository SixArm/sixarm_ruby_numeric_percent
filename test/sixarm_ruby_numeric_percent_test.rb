# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start
require "sixarm_ruby_numeric_percent"

class NumericPercentTest < Minitest::Test

  N = 0.12345
  NAN = 0/0.0
  INFINITE = 1/0.0

  def test_percent_with_precision_nil
    assert_equal(12, N.percent)
  end

  def test_percent_with_precision_1
    assert_equal(10, N.percent(1))
  end

  def test_percent_with_precision_2
    assert_equal(12, N.percent(2))
  end

  def test_percent_with_precision_3_with_round_down
    assert_equal(12.3, N.percent(3))
  end

  def test_percent_with_precision_4_with_round_up
    assert_equal(12.35, N.percent(4))
  end

  def test_nan
    assert(NAN.percent.nan?)
  end

  def test_infinite
    assert(INFINITE.percent.infinite?)
  end

end
