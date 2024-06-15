-- This theme is really nice but it draws code completion
-- snippet borders using the wrong background color!
-- This seems the be a theme issue as this does not
-- happen when the Catppuccin theme is loaded.
-- So this theme is disabled for now in favor of Catppuccin!

return {
    "folke/tokyonight.nvim",
    lazy = false,
    name = "tokyonight",
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd.colorscheme "tokyonight-night"
    end,
}
