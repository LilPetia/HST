config = require('config')
local http_client = require('http.client')
local resourses = http_client.get('http://' .. config['proxy']['bypass']['host'] .. ':' .. config['proxy']['bypass']['port'])
return resourses