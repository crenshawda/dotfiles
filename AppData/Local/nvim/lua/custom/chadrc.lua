-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- Install plugins
local userPlugins = require "custom.plugins" -- path to table

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  --theme = "gruvchad",
  theme = "kanagawa",
  install = userPlugins,
}

return M
