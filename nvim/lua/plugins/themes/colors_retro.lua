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
      color_overrides = {
        mocha = {
          rosewater = "#f4e8d1",
          flamingo = "#f2ccb7",
          pink = "#e09f7d",
          mauve = "#e76f51",
          red = "#d65a31",
          maroon = "#c8553d",
          peach = "#f4a261",
          yellow = "#e9c46a",
          green = "#b5a642",
          teal = "#dda15e",
          sky = "#e6b87d",
          sapphire = "#d48c46",
          blue = "#f4a261",
          lavender = "#f4e8d1",
          text = "#f4e8d1",
          subtext1 = "#dfd3bc",
          subtext0 = "#c7b9a1",
          overlay2 = "#a89882",
          overlay1 = "#8c7b65",
          overlay0 = "#7f5539",
          surface2 = "#5c4332",
          surface1 = "#4a3525",
          surface0 = "#332419",
          base = "#1a1410",
          mantle = "#140f0c",
          crust = "#0e0a08",
        },
      },
      custom_highlights = function(colors)
        return {
          Comment = { fg = "#7f5539", italic = true },
          LineNr = { fg = "#4a3525" },
          CursorLineNr = { fg = "#f4a261", bold = true },

          Keyword = { fg = "#e76f51", italic = true },
          Function = { fg = "#f4a261" },
          String = { fg = "#dda15e" },
          Constant = { fg = "#e9c46a" },
          Type = { fg = "#e6b87d" },
          Identifier = { fg = "#f4e8d1" },
          Operator = { fg = "#d48c46" },

          -- Ajustes do NvimTree (incluindo a linha do cursor e seleção)
          NvimTreeCursorLine = { bg = "#332419" }, -- Fundo suave para a linha selecionada no tree
          NvimTreeFolderName = { fg = "#e9c46a" },
          NvimTreeOpenedFolderName = { fg = "#f4a261", bold = true },
          NvimTreeEmptyFolderName = { fg = "#7f5539" },
          NvimTreeFolderIcon = { fg = "#dda15e" },
          NvimTreeFileIcon = { fg = "#dda15e" },
        }
      end,
    })

    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
