# SixArm.com → Ruby → <br> Numeric#percent to calculate a percentage

* Doc: <http://sixarm.com/sixarm_ruby_numeric_percent/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_numeric_percent>
* Repo: <http://github.com/sixarm/sixarm_ruby_numeric_percent>
<!--header-shut-->


## Introduction

Calculate a number as percentage with rounding.

For docs go to <http://sixarm.com/sixarm_ruby_numeric_percent/doc>

Want to help? We're happy to get pull requests.


<!--install-opent-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_numeric_percent

Or add this to your Gemfile:

    gem 'sixarm_ruby_numeric_percent'

### Require

To require the gem in your code:

    require 'sixarm_ruby_numeric_percent'

<!--install-shut-->


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
