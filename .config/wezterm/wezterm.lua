local wezterm = require("wezterm")

local config = {
	check_for_updates = true,

	colors = require("dracula"),
	color_scheme = "Gruvbox Dark",

	enable_scroll_bar = true,

	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,

	font = wezterm.font_with_fallback({ "Hack Nerd Font" }),
	font_size = 10.0,

	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	window_close_confirmation = "NeverPrompt",
	window_background_opacity = 0.9,
}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.default_prog = { "wsl", "--cd", "~" }
else
end

return config
