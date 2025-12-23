-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 设置编码格式
vim.opt.encoding = "utf-8"
vim.opt.fenc = "utf-8"
vim.opt.fileencoding = "utf-8,gbk,big5,cp936,gb18030,euc-jp,euc-kr,latin1,ucs-bom,ucs"

-- 剪贴板通讯
vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
        ["+"] = "clip.exe",
        ["*"] = "clip.exe",
    },
    paste = {
        ["+"] = "powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace('', ''))",
        ["*"] = "powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace('', ''))",
    },
    cache_enable = -1,
}

-- 设置 tab 缩进宽度为 4 空格
vim.opt.tabstop = 4
-- 不设置自动缩进宽度
vim.opt.shiftwidth = 0

-- 始终显示符号列 (用于显示 error, git 等诊断信息)
vim.opt.signcolumn = "yes"
