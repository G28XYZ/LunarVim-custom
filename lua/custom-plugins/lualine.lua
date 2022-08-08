local M = {}

M.config = function()
	-- Config
	local config = {
		options = {
			icons_enabled = true,
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
			theme = "auto",
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {},
	}
	-- Now don't forget to initialize lualine
	lvim.builtin.lualine.options = config.options
	lvim.builtin.lualine.sections = config.sections
	lvim.builtin.lualine.inactive_sections = config.inactive_sections
end

return M
