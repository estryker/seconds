=begin rdoc 
Adds active_support/core_ext/numeric like methods to the Numeric class

e.g. 15.minutes  returns 15 * 60
e.g. 15.minutes.ago returns a Time object whose value is 15 minutes less than Time.now
=end
class Numeric
  
=begin rdoc
Returns the number of seconds in +self+ seconds. Intended to be used with the +ago+ method. 

---
 1.second
 => 1
---
=end
  def second
    self
  end


=begin rdoc
Returns the number of seconds in +self+ minutes. Intended to be used with the +ago+ method. 

---
 1.minute
 => 60
---
=end
  def minute
    60*second
  end

=begin rdoc
Returns the number of seconds in +self+ hours. Intended to be used with the +ago+ method. 

---
 1.hour
 => 3600
---
=end
  def hour
    60*minute
  end

=begin rdoc
Returns the number of seconds in +self+ days. Intended to be used with the +ago+ method. 

---
 1.day
 => 86400
---
=end
  def day
    24*hour
  end

=begin rdoc
Returns the number of seconds in +self+ weeks. Intended to be used with the +ago+ method. 

---
 1.week
 => 604800
---
=end
  def week
    7*day
  end

=begin rdoc
Returns the number of seconds in +self+ months. Assumes a month is 28 days. Intended to be used with the +ago+ method. 

---
 1.month
 => 2419200
---
=end
  def month
    4*week
  end

=begin rdoc
Returns the number of seconds in +self+ years. Assumes a year is 365 days. Intended to be used with the +ago+ method. 
Note that this doesn't account for leap years. 

---
 1.year
 => 31536000
---
=end
  def year
    365*day
  end

=begin rdoc
Returns a Time object +self+ seconds before Time.now. 

---
1.day.ago
---
=end

  def ago
    Time.now - self
  end

=begin rdoc
Returns a Time object +self+ seconds before the given time. 

---
1.hour.until(some_time)
---
=end
  def until time
    time - self
  end

=begin rdoc
Returns a Time object +self+ seconds after the given time. 

---
1.hour.from(some_time)
---

=end

  def from time
    time + self
  end

=begin rdoc
Returns a Time object +self+ seconds from now.

---
in_an_hour = 1.hour.from_now
---
=end
  def from_now
    self.from Time.now
  end

  #some pluralization aliases
  alias :seconds :second
  alias :minutes :minute
  alias :hours :hour
  alias :days :day
  alias :weeks :week
  alias :months :month
  alias :years :year
end
