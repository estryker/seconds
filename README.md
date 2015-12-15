== Overview

Seconds adds active_support/core_ext/numeric like methods to the Numeric class

== Documentation

Read the rdocs for the Numeric class in seconds.rb

== Installation

It is recommended to install seconds using RubyGems:

```
 $ sudo gem install seconds
```

== Examples

```ruby
 1.second
 # => 1

 1.minute
 # => 60

 1.hour
 # => 3600

 1.hour.ago # (where Time.now is 2012-03-23 03:34:52 +0100)
 # => 2012-03-23 02:34:52 +0100


 2.days.from_now 
 # => 2012-03-25 03:34:52 +0100
```