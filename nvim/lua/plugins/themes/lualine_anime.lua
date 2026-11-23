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
						a = { fg = "#1b3d1c", bg = "#8cff66", gui = "bold" }, -- Modo Normal: Verde-grama iluminado pelo sol
						b = { fg = "#f2ffe8", bg = "#2e632f" },             -- Seção B: Verde-folha médio
						c = { fg = "#f2ffe8", bg = "NONE" },                -- Seção C: Fundo transparente
					},
					insert = {
						a = { fg = "#1b3d1c", bg = "#fff066", gui = "bold" }, -- Modo Inserção: Amarelo-sol dos trilhos
						b = { fg = "#f2ffe8", bg = "#2e632f" },
						c = { fg = "#f2ffe8", bg = "NONE" },
					},
					visual = {
						a = { fg = "#1b3d1c", bg = "#66fff2", gui = "bold" }, -- Modo Visual: Ciano claro / azul da saia
						b = { fg = "#f2ffe8", bg = "#2e632f" },
						c = { fg = "#f2ffe8", bg = "NONE" },
					},
					replace = {
						a = { fg = "#ffffff", bg = "#ff7640", gui = "bold" }, -- Modo Replace: Laranja da cancela/bolsa
						b = { fg = "#f2ffe8", bg = "#2e632f" },
						c = { fg = "#f2ffe8", bg = "NONE" },
					},
					command = {
						a = { fg = "#1b3d1c", bg = "#d9c2ff", gui = "bold" }, -- Modo Command: Lilás suave
						b = { fg = "#f2ffe8", bg = "#2e632f" },
						c = { fg = "#f2ffe8", bg = "NONE" },
					},
					inactive = {
						a = { fg = "#669e60", bg = "NONE" },
						b = { fg = "#669e60", bg = "NONE" },
						c = { fg = "#669e60", bg = "NONE" },
					},
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		},
	},
}
