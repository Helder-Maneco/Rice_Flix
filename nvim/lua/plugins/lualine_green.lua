return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			options = {
				theme = {
					normal = {
						a = { fg = "#0c1914", bg = "#34b8a5", gui = "bold" }, -- Modo Normal: Ciano do Lago
						b = { fg = "#a2d5b6", bg = "#1b3c29" },             -- Seção B: Verde Pinheiro
						c = { fg = "#a2d5b6", bg = "NONE" },                -- Seção C: Fundo Transparente/Sem Faixa Escura
					},
					insert = {
						a = { fg = "#0c1914", bg = "#2bdf6d", gui = "bold" }, -- Modo Inserção: Verde Vibrante
						b = { fg = "#a2d5b6", bg = "#1b3c29" },
						c = { fg = "#a2d5b6", bg = "NONE" },
					},
					visual = {
						a = { fg = "#0c1914", bg = "#e2af60", gui = "bold" }, -- Modo Visual: Tom Terroso/Dourado
						b = { fg = "#a2d5b6", bg = "#1b3c29" },
						c = { fg = "#a2d5b6", bg = "NONE" },
					},
					replace = {
						a = { fg = "#ffffff", bg = "#f07124", gui = "bold" }, -- Modo Replace: Alaranjado da Cabana
						b = { fg = "#a2d5b6", bg = "#1b3c29" },
						c = { fg = "#a2d5b6", bg = "NONE" },
					},
					inactive = {
						a = { fg = "#237a62", bg = "NONE" },
						b = { fg = "#237a62", bg = "NONE" },
						c = { fg = "#237a62", bg = "NONE" },
					},
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename" },
				lualine_c = {},
				lualine_x = {}, -- Removida a parte do OS/FileType que aparecia no meio/direita
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		},
	},
}
