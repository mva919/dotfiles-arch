require("config.lazy")

vim.keymap.set("n", "<leader><leader>x", "<Cmd>source %<CR>", { desc = "Source current file" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Source highlighted text" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Source current line" })

vim.keymap.set("n", "<M-j>", ":cnext<CR>", { desc = "Go to next item in quick fix list" })
vim.keymap.set("n", "<M-k>", ":cprev<CR>", { desc = "Go to prev item in quick fix list" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Hightlight text being yanked",
	group = vim.api.nvim_create_augroup("hightlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
