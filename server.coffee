stat = require 'node-static'

#process.env.PWD = process.cwd()

file = new stat.Server "./dist"

require('http').createServer (req, res) ->
	req.addListener 'end', ->
		file.serve req, res
	.resume()
.listen process.env.PORT