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
          -- Interface e números de linha (alinhados ao fundo verde #234d24 do foot)
          Comment = { fg = "#669e60", italic = true },
          LineNr = { fg = "#458738" },
          CursorLineNr = { fg = "#fff066", bold = true },
          CursorLine = { bg = "#2e632f" },
          Visual = { bg = "#458738", fg = "#ffffff", bold = true },

          -- Árvore de arquivos (NvimTree)
          NvimTreeFolderName = { fg = "#f2ffe8" },
          NvimTreeOpenedFolderName = { fg = "#8cff66", bold = true },
          NvimTreeEmptyFolderName = { fg = "#669e60" },
          NvimTreeFolderIcon = { fg = "#fff066" },
          NvimTreeFileIcon = { fg = "#8cff66" },

          -- Menus flutuantes (CMP / Telescope)
          Pmenu = { bg = "#1b3d1c", fg = "#f2ffe8" },
          PmenuSel = { bg = "#8cff66", fg = "#1b3d1c", bold = true },
          FloatBorder = { fg = "#458738" },
        }
      end,
    })

    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
