# Ruby » <br> Numeric#percent to calculate a percentage

* Doc: <http://sixarm.com/sixarm_ruby_numeric_percent/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_numeric_percent>
* Repo: <http://github.com/sixarm/sixarm_ruby_numeric_percent>
<!--HEADER-SHUT-->


## Introduction

Calculate a number as percentage with rounding.

For docs go to <http://sixarm.com/sixarm_ruby_numeric_percent/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_numeric_percent", ">= 1.0.4", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_numeric_percent -v ">= 1.0.4, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_numeric_percent -v ">= 1.0.4, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_numeric_percent"

<!--INSTALL-SHUT-->


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
