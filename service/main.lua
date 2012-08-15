local skynet = require "skynet"

skynet.dispatch()

skynet.start(function()
	print("Server start")
	local lualog = skynet.launch("snlua","lualog")
	print("lualog",lualog)
	local launcher = skynet.launch("snlua","launcher")
	print("launcher", launcher)
	local console = skynet.launch("snlua","console")
	print("console",console)
	local watchdog = skynet.launch("snlua","watchdog","8888 4 0")
	print("watchdog",watchdog)
	local db = skynet.launch("snlua","simpledb")
	print("simpledb",db)
	local connection = skynet.launch("connection","256")
	print("connection",connection)
	local redis = skynet.launch("snlua","redis-mgr")
	print("redis",redis)
	skynet.exit()
end)
