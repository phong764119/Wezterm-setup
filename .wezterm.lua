-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config = {
	font_size = 12,
	font = wezterm.font("Hack Nerd Font Mono"),
	color_scheme = "Tokyo Night Moon",
	window_decorations = "RESIZE",
	default_prog = { "pwsh.exe" },
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	-- tmux a like
	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 },
	keys = {
		{
			key = "s",
			mods = "LEADER",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "S",
			mods = "LEADER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			mods = "LEADER",
			key = "h",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			mods = "LEADER",
			key = "j",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
		{
			mods = "LEADER",
			key = "k",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			mods = "LEADER",
			key = "l",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
	},
}

wezterm.on("update-right-status", function(window, _)
	local prefix = ""

	if window:leader_is_active() then
		prefix = " " .. "🇻🇳"
	end

	window:set_left_status(wezterm.format({
		{ Background = { Color = "transparent" } },
		{ Text = prefix },
	}))
end)

wezterm.on("gui-startup", function(window)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	local gui_window = window:gui_window()
	gui_window:maximize()
end)

return config
