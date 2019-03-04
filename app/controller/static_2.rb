require "pry"
require "rack"

class StaticTwo
  binding.pry
  def self.call(env)
    [200,{"Content-type"=>"text/html"},[File.read("./app/views/#{page}")]]
  end
end
