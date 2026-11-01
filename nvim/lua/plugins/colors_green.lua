return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      theme = "dragon", 
      background = {
        dark = "dragon",
        light = "lotus",
      },
      colors = {
        palette = {
          -- Fundo escuro e profundo
          sumiInk0 = "#050807",
          sumiInk1 = "#080c0a",
          sumiInk2 = "#0f1c19",
          sumiInk3 = "#15301b",
          sumiInk4 = "#2b7a78",

          -- Tons de ciano e verde do lago
          crystalBlue = "#5cdbda",
          waveAqua1 = "#38b2ac",
          waveAqua2 = "#26e664",

          -- Destaques
          oniViolet = "#8fbfa0",
          sakuraPink = "#5cdbda",
          carpYellow = "#dda15e",
          surimiOrange = "#f07124",
          peachRed = "#e63946",
        },
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        return {
          -- Estilo para os comentários
          Comment = { fg = "#2b7a78", italic = true },
          -- Numeração de linhas
          LineNr = { fg = "#15301b" },
          CursorLineNr = { fg = colors.palette.carpYellow, bold = true },
        }
      end,
    })

    -- Aplicar o tema Kanagawa customizado
    vim.cmd.colorscheme("kanagawa")

    -- Remoção de fundos redundantes (Transparência/Sincronização)
    vim.cmd([[
      highlight Normal guibg=none ctermbg=none
      highlight NonText guibg=none ctermbg=none
      highlight NormalNC guibg=none ctermbg=none
      highlight SignColumn guibg=none ctermbg=none
      highlight StatusLine guibg=none ctermbg=none
    ]])

    -- Cores monocromáticas para pastas e ícones no NvimTree (Verde Névoa da paleta)
    vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#8fbfa0" })
    vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#38b2ac", bold = true })
    vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = "#2b7a78" })
    vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#8fbfa0" })
    vim.api.nvim_set_hl(0, "NvimTreeFileIcon", { fg = "#8fbfa0" })
  end,
}
