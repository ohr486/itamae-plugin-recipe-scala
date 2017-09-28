# Itamae::Plugin::Recipe::Scala

[![Gem Version](https://badge.fury.io/rb/itamae-plugin-recipe-scala.svg)](https://badge.fury.io/rb/itamae-plugin-recipe-scala)
[![wercker status](https://app.wercker.com/status/31977a02aa62b711ed510728a4f04cf6/m/master "wercker status")](https://app.wercker.com/project/byKey/31977a02aa62b711ed510728a4f04cf6)

Itamae plugin to install scala

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-scala'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-scala

## Usage

### Recipe

```ruby
# your recipe
include_recipe "scala::install"
```

### Node

```yaml
# node.yml
scala:
  # target scala version
  version: 2.12.2
```

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
