return{
	{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function(_, opts)
	  --require("tokyodark").setup(opts)
	  vim.cmd[[colorscheme tokyonight]]
  end,
},
}
