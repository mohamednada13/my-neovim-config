return{
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local lspconfig = require("lspconfig")
			local mason = require("mason")

			mason.setup()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			require('lspconfig').asm_lsp.setup{capabilities = capabilities,}
			require('lspconfig').clangd.setup{capabilities = capabilities,}
			require('lspconfig').lua_ls.setup{capabilities = capabilities,}
			require('lspconfig').jedi_language_server.setup{capabilities = capabilities,}
			--require('lspconfig').setup{capabilities = capabilities,}
		end,

	},
}

