vim.api.nvim_set_keymap("n", "<leader>.", "<Plug>(coc-codeaction)", {})
vim.api.nvim_set_keymap("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>f", "<Plug>(coc-format)", {})
vim.api.nvim_set_keymap("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-e>", ":CocCommand explorer<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-P>', ":CocList files<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>e', ":CocList buffers<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>f', ":CocList grep<CR>", { noremap = true })

vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300

vim.g.coc_global_extensions = {
  'coc-css',
	'coc-diagnostic',
	'coc-docker',
	'coc-eslint',
	'coc-explorer',
	'coc-gitignore',
	'coc-html',
	'coc-import-cost',
	'coc-java',
	'coc-jest',
	'coc-json',
	'coc-lists',
  'coc-sumneko-lua',
	'coc-prettier',
	'coc-pyright',
  'coc-rust-analyzer',
	'coc-snippets',
	'coc-stylelint',
	'coc-syntax',
	'coc-tailwindcss',
	'coc-tasks',
	'coc-translator',
	'coc-tsserver',
  'coc-toml',
	'coc-vetur',
	'coc-vimlsp',
	'coc-yaml',
	'coc-yank'
}
