#!/usr/bin/env tarantool
config = require('config')
resourses = require('get')

local function page(req)
    return resourses
end

local router = require('http.router').new({charset = "utf8"})
router:route({method = 'GET', path = '/'}, page)
-- router:route({method = 'POST', path = '/'}, )
local server = require('http.server').new('localhost', config['proxy']['port'])
server:set_router(router)
server:start()
