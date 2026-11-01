return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          diagnostics = "nvim_lsp",
          separator_style = "thin", 
          offsets = {
            {
              filetype = "NvimTree",
              text = "Files",
              text_align = "left",
              separator = false,
            }
          },
          show_buffer_close_icons = false,
          show_close_icon = false,
        },
        highlights = {
          -- Fundo geral da barra transparente (elimina a faixa preta)
          fill = {
            bg = 'NONE',
          },
          -- Abas inativas
          background = {
            fg = '#8fbfa0',
            bg = 'NONE',
          },
          -- Aba selecionada (Ativa: Ciano do Lago com negrito/itálico)
          buffer_selected = {
            fg = '#38b2ac',
            bg = 'NONE',
            bold = true,
            italic = true,
          },
          -- Separadores em tom verde-floresta discreto
          separator = {
            fg = '#15301b',
            bg = 'NONE',
          },
          separator_selected = {
            fg = '#15301b',
            bg = 'NONE',
          },
          offset_separator = {
            fg = '#15301b',
            bg = 'NONE',
          },
          -- Indicador de modificação (Arquivo não salvo)
          modified_selected = {
            fg = '#dda15e',
            bg = 'NONE',
          },
        }
      })
    end,
  },
}
