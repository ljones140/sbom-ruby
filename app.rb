class App
  def call(env)
    [200, {}, ["Hello World"]]
  end
end

require_relative "app/app"

run App.new
