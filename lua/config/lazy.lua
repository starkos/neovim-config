--
-- Lazy.nvim plugin manager
-- https://lazy.folke.io/
--
-- Mostly copied from https://lazy.folke.io/installation.
--

-- Where should the lazy.nvim plugin be installed? On Unix-like
-- systems, this resolves to `.local/share/nvim/lazy/lazy.nvim`

local lazy_path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- If we haven't already, pull the latest version stable version
-- of lazy.nvim from GitHub.

if not vim.uv.fs_stat(lazy_path) then
	vim.api.nvim_echo({
		{ 'Installing lazy.nvim...' }
	}, false, {})

	local output = vim.fn.system({
		'git', 'clone', '--filter=blob:none', '--branch=stable',
		'https://github.com/folke/lazy.nvim.git', lazy_path
	})

	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
			{ output, 'WarningMsg' },
			{ '\nPress any key to exit...' }
		}, true, {})

		vim.fn.getchar()
		os.exit(1)
	end
end

-- Add the lazy.nvim installation path to the list which Lua will check
-- when trying to resolve `require()` calls

vim.opt.runtimepath:prepend(lazy_path)

