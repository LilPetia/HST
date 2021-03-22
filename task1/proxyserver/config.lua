local fh = require('fio').open('./config.yml') 
local raw_config = fh:pread( 1000000, 0)
local config = require('yaml').decode(raw_config)
fh:close()
return config