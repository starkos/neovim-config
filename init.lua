-- Prepare the lazy.nvim plugin manager, installing it if necessary
require('config.lazy')

-- Let AstroNvim do a lot of the heavy lifting
require('config.astro')

-- Final tweaks, applied after all plugins are registered
require('config.polish')
