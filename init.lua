-- Enable faster startup by caching compiled Lua modules
vim.loader.enable()

require("options")
require("autocmds")
require("keymaps")

local function gh(repo)
    return "https://github.com/" .. repo
end

vim.pack.add({
    { src = gh("nvim-tree/nvim-web-devicons") },
    { src = gh("lewis6991/gitsigns.nvim") },
    { src = gh("folke/which-key.nvim") },
    { src = gh("folke/todo-comments.nvim") },
    { src = gh("nvim-treesitter/nvim-treesitter"), version = "main"},
    { src = gh("Mofiqul/vscode.nvim") },
    { src = gh("nvim-lualine/lualine.nvim") },
    { src = gh("akinsho/bufferline.nvim"), version = vim.version.range("*") },
    { src = gh("saghen/blink.cmp"), version = vim.version.range("*") },
    { src = gh("neovim/nvim-lspconfig") },
    { src = gh("stevearc/oil.nvim") },
    { src = gh("nvim-mini/mini.ai") },
    { src = gh("nvim-mini/mini.move") },
    { src = gh("nvim-mini/mini.pairs") },
    { src = gh("nvim-mini/mini.cursorword") },
})

vim.cmd.colorscheme = "vscode"

