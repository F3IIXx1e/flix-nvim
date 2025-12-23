-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 通过 map 函数注册快捷键
local function map(mode, lhs, rhs, opts)
    local options = { silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- 获取 leader 键
local leader = vim.g.mapleader
local localleader = vim.g.maplocalleader

-- 设置 Ctrl+z 为撤销
map({ "n", "i", "v" }, "<C-z>", "<esc><cmd>undo<cr>", { desc = "undo" })
