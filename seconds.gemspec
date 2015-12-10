Gem::Specification.new do |spec|
  spec.name = "seconds"
  spec.version = "0.3"
  spec.summary = "An extension of the Numeric class that provides Time object unit conversion"
  spec.files = Dir['lib/*.rb']+ ['README','GPLv2-LICENSE']
  spec.has_rdoc = true
  spec.author = "Ethan Stryker"
  spec.email = "e.stryker@gmail.com"
  spec.rubyforge_project = "seconds"
  spec.description = <<-END
  An extension of the Numeric class that provides Time object unit conversion similar to ActiveSupport's numeric extension.
  END
  spec.homepage = 'http://seconds.rubyforge.org/'
end
