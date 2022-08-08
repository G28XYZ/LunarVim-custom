-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.keys.normal_mode["<C-n>"] = ":NvimTreeToggle<cr>"

vim.keymap.set("n", "<m-down>", ":m .+1<CR>", { desc = "move line up" })
vim.keymap.set("n", "<m-up>", ":m .-2<CR>", { desc = "move line up" })

vim.keymap.set("v", "<m-down>", ":m'>+<CR>gv=`<my`>mzgv`yo`z", { desc = "move selected down" })
vim.keymap.set("v", "<m-up>", ":m'<-2<CR>gv=`<my`>mzgv`yo`z", { desc = "move selected up" })

vim.keymap.set("i", "<m-j>", "<Esc>:m .+<CR>==gi", { desc = "move down in insert mode" })
vim.keymap.set("i", "<m-k>", "<Esc>:m .-2<CR>==gi", { desc = "move up in insert mode" })

vim.keymap.set("n", "<m-ScrollWheelDown>", "10zl", { desc = "move hotizontal right" })
vim.keymap.set("n", "<m-ScrollWheelUp>", "10zh", { desc = "move hotizontal left" })
vim.keymap.set("i", "<m-ScrollWheelDown>", "10zl", { desc = "move hotizontal right" })
vim.keymap.set("i", "<m-ScrollWheelUp>", "10zh", { desc = "move hotizontal left" })

vim.keymap.set("n", "<ScrollWheelLeft>", "10zh", { desc = "move hotizontal right" })
vim.keymap.set("n", "<ScrollWheelRight>", "10zl", { desc = "move hotizontal left" })
