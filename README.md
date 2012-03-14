# SixArm.com » Ruby » <br> Numeric#percent to calculate a percentage

* Docs: <http://sixarm.com/sixarm_ruby_numeric_percent/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_numeric_percent>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Calculate a number as percentage with rounding.

For docs go to <http://sixarm.com/sixarm_ruby_numeric_percent/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_numeric_percent

Bundler:

    gem "sixarm_ruby_numeric_percent", "=1.0.3"

Require:

    require "sixarm_ruby_numeric_percent"


## Examples

Percent:

    require "sixarm_ruby_numeric_percent"
    x=0.1234
    x.percent => 12

Optional precision:

    x.percent(nil) => 12 (default is to round to the closest integer)
    x.percent(1) => 10
    x.percent(2) => 12
    x.percent(3) => 12.3
    x.percent(3) => 12.34

Note that precision 1 and 2 are optimized for speed and to return integers; 
other precisions return floats.
