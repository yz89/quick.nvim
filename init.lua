require("basics")
require("colors")
require("coc-config")
require("code-runner")
require("easy-motion-config")
require("lualine").setup()

require("nvim-treesitter.configs").setup({
  context_commentstring = {
    enable = true,
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})

require("code_runner").setup({
  filetype = {
    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
    python = "python3 -u",
    typescript = "deno run",
    rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
    javascript = "node"
  },
})

return require("packer").startup(function()
  use("wbthomason/packer.nvim")
  use({ "neoclide/coc.nvim", branch = "release" })
  use("morhetz/gruvbox")
  use("nvim-treesitter/nvim-treesitter")
  use("tpope/vim-commentary")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("ThePrimeagen/git-worktree.nvim")
  use("tpope/vim-fugitive")
  -- use 'liuchengxu/eleline.vim'
  use("vim-airline/vim-airline")
  use("easymotion/vim-easymotion")
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })
  use({
    "ur4ltz/surround.nvim",
    config = function()
      require("surround").setup({ mappings_style = "surround" })
    end,
  })
  use({ 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' })
end)
