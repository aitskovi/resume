require 'erb'
require 'mustache'

module Resume
  module HTML 
  end
end

TEMPLATE_LOCATION = 'templates/html.erb'

def render(data)
  template = File.read(TEMPLATE_LOCATION)
  Mustache.render(template, data)
end


OUTPUT_LOCATION = 'build/resume.html'
File.write(OUTPUT_LOCATION, render({}))
