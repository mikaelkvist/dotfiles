local M = { 'nvim-lualine/lualine.nvim' }

M.event = 'VeryLazy'

M.dependencies = {
	"nvim-tree/nvim-web-devicons",
}

local navic = function()
	local navic = require("nvim-navic")
	local ret = navic.get_location()
	return ret:len() > 2000 and "navic error" or ret
end

local navic_load = function()
	if package.loaded["nvim-navic"] then
	  return require("nvim-navic").is_available()
	end
end

function M.config()
  if vim.g.started_by_firenvim then
    return
  end

  require("lualine").setup({
    options = {
      theme = "auto",
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
      icons_enabled = true,
      globalstatus = true,
	  -- always_divide_middle = true,
      -- disabled_filetypes = { statusline = { "dashboard", "lazy" } },
    },
    sections = {
      lualine_a = { { "mode" } },
      lualine_b = { "branch", "diff" },
      lualine_c = {
        { "diagnostics", sources = { "nvim_diagnostic" } },
        {
			navic,
          	cond = navic_load,
        },
      },
      lualine_x = {
      },
      lualine_y = { "progress", { 'encoding' }},
      lualine_z = {
        {
          function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return "" .. ms .. " ms"
          end,
        },
	  },
    },
  })
end

return M
