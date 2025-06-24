-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 12

config.color_scheme = "Tokyo Night Moon"

config.window_decorations = "RESIZE"
-- for window
config.default_prog = { "pwsh.exe" }

return config
