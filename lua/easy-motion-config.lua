vim.api.nvim_set_keymap("n", ';s', '<Plug>(easymotion-overwin-f)', {})
vim.api.nvim_set_keymap("n", ";s", "<Plug>(easymotion-overwin-f2)", {})
vim.api.nvim_set_keymap("n", ";j", "<Plug>(easymotion-j)", {})
vim.api.nvim_set_keymap("n", ";k", "<Plug>(easymotion-k)", {})

vim.g["easymotion_startofline"] = 0
vim.g["easymotion_smartcase"] = 1
