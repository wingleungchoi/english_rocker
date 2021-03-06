# http://recipes.sinatrarb.com/p/testing/rspec
require 'rack/test'
require 'rspec'

require File.expand_path '../../english_rocker.rb', __FILE__

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def EnglishRocker(); Sinatra::Application; end
end

# For RSpec 2.x
RSpec.configure { |c|
  # Use color in STDOUT
  c.color = true
  
  c.include RSpecMixin 
}