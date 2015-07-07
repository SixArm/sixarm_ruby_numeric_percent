# Ruby » <br> Numeric#percent to calculate a percentage

* Doc: <http://sixarm.com/sixarm_ruby_numeric_percent/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_numeric_percent>
* Repo: <http://github.com/sixarm/sixarm_ruby_numeric_percent>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Calculate a number as percentage with rounding.

For docs go to <http://sixarm.com/sixarm_ruby_numeric_percent/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_numeric_percent

Bundler:

    gem "sixarm_ruby_numeric_percent", "~>1.0.3"

Require:

    require "sixarm_ruby_numeric_percent"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_numeric_percent --trust-policy HighSecurity


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


## Changes

* 2012-03-14 1.0.3 Update docs, tests
* 2012-01-30 1.0.3 Add Infinite special case
* 2012-01-28 1.0.2 Improve Not-a-Number to use respond_to?('nan?')
* 2012-01-20 1.0.1 Add Not-a-Number special case
* 2012-01-15 1.0.0 Publish
