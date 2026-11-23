return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      show_end_of_buffer = false,
      term_colors = true,
      styles = {
        comments = { "italic" },
        keywords = { "italic" },
      },
      integrations = {
        nvimtree = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
        notify = false,
        mini = false,
      },
      custom_highlights = function(colors)
        return {
          Comment = { fg = "#2b7a78", italic = true },
          LineNr = { fg = "#15301b" },
          CursorLineNr = { fg = "#dda15e", bold = true },

          NvimTreeFolderName = { fg = "#8fbfa0" },
          NvimTreeOpenedFolderName = { fg = "#38b2ac", bold = true },
          NvimTreeEmptyFolderName = { fg = "#2b7a78" },
          NvimTreeFolderIcon = { fg = "#8fbfa0" },
          NvimTreeFileIcon = { fg = "#8fbfa0" },
        }
      end,
    })

    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
