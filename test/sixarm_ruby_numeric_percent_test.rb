# -*- coding: utf-8 -*-
require 'test/unit'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_numeric_percent'

class StringTest < Test::Unit::TestCase

  N=0.12345

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

end
