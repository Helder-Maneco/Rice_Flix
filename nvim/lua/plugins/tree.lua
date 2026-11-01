return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        root_folder_label = false, 
        indent_markers = {
          enable = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = true,
        custom = { "^\\.git$" },
      },
    })

    -- Destaques nativos da NvimTree combinados com a paleta
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#15301b", bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#15301b", fg = "#38b2ac", bold = true })
    vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#15301b" })
    
    -- Status do Git sincronizados com a cabana/lago
    vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#dda15e" })   -- Modificado: Dourado
    vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#26e664" })     -- Novo: Verde Vibrante
    vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#f07124" }) -- Deletado: Laranja Cabana
  end,
}
