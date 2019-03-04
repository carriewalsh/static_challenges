require "pry"
class StaticTwo
  def self.call(env)
    case env["PATH_INFO"]
    when "/" then index
    when "/stylesheets/main.css" then css
    else
      error
    end
  end

  def self.index
    render_view("index.html")
  end

  def self.error
    render_view("error.html")
  end

  def self.css
    render_static("main.css")
  end

  def self.render_view(page,code = "200")
    [code,{"Content-Type" => "text/html"},[File.read("./app/views/#{page}")]]
  end

  def self.render_static(asset)
    [200, {'Content-Type' => 'text/html'}, [File.read("./stylesheets/#{asset}")]]
  end
end
