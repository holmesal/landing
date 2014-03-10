# stat = require 'node-static'

# file = new stat.Server './dist'

# require('http').createServer (req, res) ->
# 	req.addListener 'end', ->
# 		file.serve req, res
# 	.resume()
# .listen 80

http = require 'http'
server = http.createServer (req, res) ->
	res.writeHead 200, 
		'Content-Type': 'text/plain'
	res.end 'Hello!'
server.listen process.env.PORT