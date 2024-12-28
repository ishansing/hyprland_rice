local wezterm = require("wezterm")

return {
	font = wezterm.font("JetbrainsMono Nerd Font"),
	font_size = 11,
	warn_about_missing_glyphs = false,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "SteadyUnderline",
	color_scheme = "Catppuccin Mocha (Gogh)",
	enable_wayland = false,
	keys = {
		-- Alt + Left Arrow
		{ key = "LeftArrow", mods = "ALT", action = wezterm.action.SendString("\x1b[D") },
		-- Alt + Right Arrow
		{ key = "RightArrow", mods = "ALT", action = wezterm.action.SendString("\x1b[C") },
		-- Alt + Up Arrow
		{ key = "UpArrow", mods = "ALT", action = wezterm.action.SendString("\x1b[A") },
		-- Alt + Down Arrow
		{ key = "DownArrow", mods = "ALT", action = wezterm.action.SendString("\x1b[B") },
	},
}
