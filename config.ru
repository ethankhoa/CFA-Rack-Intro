require 'rack'
# runs rack webserver interface
class App
  # creating app object for call method
  def call(env)
    # calling env as param
  	puts env
    # env is array with three elements
    # http response code, content type, and resonse text
    [200,
     {"Content-Type" => "text/html"},
     ["<body><h1>WWW</h1>Hello World</body>"]
	]
  end
end
# call to run the app object
run App.new
