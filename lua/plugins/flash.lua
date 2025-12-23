-- 修改 flash.nvim 配置
return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
        jump = {
            -- 设置跳转搜索结果位置
            pos = "end",
        },
    },
}
