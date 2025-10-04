--
-- Configure appearance of Neovide sessions
-- https://neovide.dev/
--

if not vim.g.neovide then
	return {}
end

return {
	'AstroNvim/astrocore',
	opts = {
		options = {
			g = {
				neovide_hide_mouse_when_typing = true,
				neovide_cursor_animation_length = 0
			}
		}
	}
}

