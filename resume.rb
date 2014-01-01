require 'erb'
require 'mustache'
require 'yaml'

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
DATA_LOCATION  = 'resume.yml'

data = YAML.load_file(DATA_LOCATION)
File.write(OUTPUT_LOCATION, Resume::HTML::render(data))
