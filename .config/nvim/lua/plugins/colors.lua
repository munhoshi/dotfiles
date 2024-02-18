-- NIGHTFOX / DUSKFOX / CARBONFOX
-- return {
-- 	"EdenEast/nightfox.nvim",
-- 	lazy = false,
-- 	priority = 999,
-- 	config = function()
-- 		vim.cmd("colorscheme duskfox")
-- 		-- vim.cmd('colorscheme carbonfox')
-- 	end,
-- }

-- CATPPUCCIN
local config = function()
  require("catppuccin").setup({
  integrations = {
    ts_rainbow = true,
    noice = true,
  },
  })
		vim.cmd.colorscheme("catppuccin-macchiato")
end
return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = config,
}

-- CATPPUCCIN EXPERIMENT
-- local config = function()
--   require("catppuccin").setup({
--   integrations = {
--     ts_rainbow = true,
--     noice = true,
--   },
--   color_overrides = {
--     mocha = {
--       text = "#F4CDE9",
--       subtext1 = "#DEBAD4",
--       subtext0 = "#C8A6BE",
--       overlay2 = "#B293A8",
--       overlay1 = "#9C7F92",
--       overlay0 = "#866C7D",
--       surface2 = "#705867",
--       surface1 = "#5A4551",
--       surface0 = "#44313B",
--
--       base = "#352939",
--       mantle = "#211924",
--       crust = "#1a1016",
--     },
--   },
-- })
-- 		vim.cmd.colorscheme("catppuccin")
-- end

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = config,
-- }
