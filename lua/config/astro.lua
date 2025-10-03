--
-- AstroNvim base IDE configuration
-- https://astronvim.com
--
-- Mostly copied from https://github.com/AstroNvim/template, but
-- structured in a way that made a little more sense to me.
--

require('lazy').setup({
	{
		'AstroNvim/AstroNvim',
		version = '^5',
		import = 'astronvim.plugins',
		opts = {
			mapleader = ' ',
			maplocalleader = ',',
			icons_enabled = true,
			update_notifications = true
		}
	},
	{ import = 'config.community' },
	{ import = 'plugins' },
},{
	install = {
		colorscheme = { 'astrotheme', 'habamax' }
	},
	ui = {
		backdrop = 100
	}
})
