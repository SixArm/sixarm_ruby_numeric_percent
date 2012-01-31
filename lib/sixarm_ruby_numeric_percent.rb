# -*- coding: utf-8 -*-
=begin rdoc
Please see README.rdoc
=end

class Numeric


  # Calculate a number as percentage with rounding:
  #
  #   x=0.1234
  #   x.percent => 12
  #
  # Optional precision:
  #
  #   x.percent(nil) => 12 (default is to round to an integer)
  #   x.percent(1) => 10
  #   x.percent(2) => 12
  #   x.percent(3) => 12.3
  #   x.percent(4) => 12.34
  #
  # Special cases:
  #
  #   NaN.percent => NaN
  #   Infinite.percent => Infinite
  #
  # Note that precision 1 and 2 are optimized for speed and also to return integers;
  # other precisions return floats.

  def percent(precision=nil)
    return self if (respond_to?('nan?') && nan?) || (respond_to?('infinite?') && infinite?) 
    # Optimized for speed for the most common cases
    return case precision
    when nil, 2
      (self * 100).round 
    when 1
      (self * 10).round * 10
    else
      (self * (10 ** precision)).round.to_f / (10 ** (precision - 2)).to_f
    end
  end

end
