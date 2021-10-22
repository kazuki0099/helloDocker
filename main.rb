require 'webrick'

server = WEBrick::HTTPServer.new(
    Document: './',
    BindAddres: '0.0.0.0',
    Port: 8000
)

server.mount_proc('/') do |re, res|
    res.body = 'hello'
end

server.start