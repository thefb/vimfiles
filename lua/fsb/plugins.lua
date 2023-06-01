local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                              , branch = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme kanagawa]])
    end,
  },
  { 
    "folke/trouble.nvim",
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    opts = {}
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })
    end,
  },
  { "theprimeagen/harpoon" },
  { "theprimeagen/refactoring.nvim" },
  { "mbbill/undotree" },
  { "tpope/vim-fugitive"},
  { "nvim-treesitter/nvim-treesitter-context" },
  { "github/copilot.vim" },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },
  {
     "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
  },
}

local opts = {}
require("lazy").setup(plugins, opts)
