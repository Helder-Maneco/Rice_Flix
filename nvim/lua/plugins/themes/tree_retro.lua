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

    -- Destaques nativos da NvimTree sincronizados com a paleta Retro Amber
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#4a3525", bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#332419", fg = "#f4a261", bold = true })
    vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#4a3525" })

    -- Status do Git sincronizados com a paleta âmbar/terracota
    vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#dda15e" })   -- Modificado: Dourado suave
    vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#e9c46a" })     -- Novo: Amarelo-âmbar iluminado
    vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#e76f51" }) -- Deletado: Laranja-terracota
  end,
}
