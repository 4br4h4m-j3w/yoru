--- ░█▀▄░█░█░█░█░█░█░█▀█░▀░█▀▀░░░█▀█░█░█░█▀▀░█▀▀░█▀█░█▄█░█▀▀
--- ░█▀▄░▄▀▄░░█░░█▀█░█░█░░░▀▀█░░░█▀█░█▄█░█▀▀░▀▀█░█░█░█░█░█▀▀
--- ░▀░▀░▀░▀░░▀░░▀░▀░▀░▀░░░▀▀▀░░░▀░▀░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀
--- ~~~~~~~~~~~~~~~~~~  @author rxyhn ~~~~~~~~~~~~~~~~~~~~~~
--- ~~~~~~~~~~~~ https://github.com/rxyhn ~~~~~~~~~~~~~~~~~~

pcall(require, "luarocks.loader")
local gears = require("gears")
local beautiful = require("beautiful")

--- ░▀█▀░█░█░█▀▀░█▄█░█▀▀
--- ░░█░░█▀█░█▀▀░█░█░█▀▀
--- ░░▀░░▀░▀░▀▀▀░▀░▀░▀▀▀

local theme_dir = gears.filesystem.get_configuration_dir() .. "theme/"
beautiful.init(theme_dir .. "theme.lua")

local bling = require("modules.bling")
local wallpaper_dir = gears.filesystem.get_configuration_dir() .. "theme/wallpapers/"

bling.module.wallpaper.setup {
    wallpaper = {wallpaper_dir},
    change_timer = 60
}



--- ░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀░█░█░█▀▄░█▀█░▀█▀░▀█▀░█▀█░█▀█░█▀▀
--- ░█░░░█░█░█░█░█▀▀░░█░░█░█░█░█░█▀▄░█▀█░░█░░░█░░█░█░█░█░▀▀█
--- ░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀░▀░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀

require("configuration")

--- ░█▄█░█▀█░█▀▄░█░█░█░░░█▀▀░█▀▀
--- ░█░█░█░█░█░█░█░█░█░░░█▀▀░▀▀█
--- ░▀░▀░▀▀▀░▀▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀

require("modules")

--- ░█░█░▀█▀
--- ░█░█░░█░
--- ░▀▀▀░▀▀▀

require("ui")

--- ░█▀▀░█▀█░█▀▄░█▀▄░█▀█░█▀▀░█▀▀
--- ░█░█░█▀█░█▀▄░█▀▄░█▀█░█░█░█▀▀
--- ░▀▀▀░▀░▀░▀░▀░▀▀░░▀░▀░▀▀▀░▀▀▀

--- Enable for lower memory consumption
collectgarbage("setpause", 110)
collectgarbage("setstepmul", 1000)
gears.timer({
	timeout = 5,
	autostart = true,
	call_now = true,
	callback = function()
		collectgarbage("collect")
	end,
})
