class StaticTwo
  def self.call(env)
    case env{"PATH_INFO"}
    when "/" then index
    else
      error
    end
  end

  def self.index
    render_view(index.html)
  end

  def self.render_view(page,code="200")
    [code,{"Content-type"=>"text/html"},[File.read("./app/views/#{page}")]]
  end
end
