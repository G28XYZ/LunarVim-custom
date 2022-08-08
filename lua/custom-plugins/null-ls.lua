-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "black", filetypes = { "python" } },
	{ command = "isort", filetypes = { "python" } },
	{
		-- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
		command = "prettier",
		---@usage arguments to pass to the formatter
		-- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
		-- extra_args = { "--single-quote", "--jsx-single-quote" }
		extra_args = { "--line-width 100" },
		---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
		filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "html" },
	},
	{ command = "stylua", filetypes = { "lua" } },
})

-- set additional linter
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8", filetypes = { "python" } },
	{
		-- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
		command = "shellcheck",
		---@usage arguments to pass to the formatter
		-- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
		extra_args = { "--severity", "warning" },
	},
	{
		command = "eslint_d",
		---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
		filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	},
	{ command = "erb-lint", filetypes = { "html" } },
})
