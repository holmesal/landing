stat = require 'node-static'

file = new stat.Server './dist'

require('http').createServer (req, res) ->
	req.addListener 'end', ->
		file.serve req, res
	.resume()
.listen 80