local wezterm = require("wezterm")

local config = {
	check_for_updates = true,
	enable_scroll_bar = true,

	color_scheme = "Gruvbox Dark",

    -- TAB
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = false,
    show_tab_index_in_tab_bar = false,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
    inactive_pane_hsb = {
        hue = 1.0,
        saturation = 1.0,
        brightness = 1.0,
    },

    -- FONT
	font = wezterm.font_with_fallback({ "FiraCode Nerd Font" }),
	font_size = 10.0,

    -- WINDOW
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	window_close_confirmation = "NeverPrompt",
	window_background_opacity = 0.95,
	native_macos_fullscreen_mode = true,

    -- MOUSE KEY BINDING
    mouse_bindings = {
    },
}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.default_prog = { "wsl", "--cd", "~" }
else
end

return config
