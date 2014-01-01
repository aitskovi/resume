require 'erb'
require 'mustache'

module Resume
  module HTML 
    TEMPLATE_LOCATION = 'templates/resume.html.mustache'

    def self.render(data)
      template = File.read(TEMPLATE_LOCATION)
      Mustache.render(template, data)
    end
  end
end

OUTPUT_LOCATION = 'build/resume.html'
File.write(OUTPUT_LOCATION, Resume::HTML::render({}))
