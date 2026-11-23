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
						a = { fg = "#1a1410", bg = "#f4a261", gui = "bold" }, -- Modo Normal: Âmbar clássico do monitor
						b = { fg = "#f4e8d1", bg = "#3d2c20" },             -- Seção B: Marrom-escuro aquecido
						c = { fg = "#dda15e", bg = "NONE" },                -- Seção C: Fundo transparente com texto dourado suave
					},
					insert = {
						a = { fg = "#1a1410", bg = "#e9c46a", gui = "bold" }, -- Modo Inserção: Amarelo-âmbar iluminado
						b = { fg = "#f4e8d1", bg = "#3d2c20" },
						c = { fg = "#dda15e", bg = "NONE" },
					},
					visual = {
						a = { fg = "#1a1410", bg = "#dda15e", gui = "bold" }, -- Modo Visual: Dourado queimado
						b = { fg = "#f4e8d1", bg = "#3d2c20" },
						c = { fg = "#dda15e", bg = "NONE" },
					},
					replace = {
						a = { fg = "#1a1410", bg = "#e76f51", gui = "bold" }, -- Modo Replace: Laranja-terracota de alerta
						b = { fg = "#f4e8d1", bg = "#3d2c20" },
						c = { fg = "#dda15e", bg = "NONE" },
					},
					command = {
						a = { fg = "#f4e8d1", bg = "#8a5a44", gui = "bold" }, -- Modo Command: Bronze / cobre escuro
						b = { fg = "#f4e8d1", bg = "#3d2c20" },
						c = { fg = "#dda15e", bg = "NONE" },
					},
					inactive = {
						a = { fg = "#7f5539", bg = "NONE" },
						b = { fg = "#7f5539", bg = "NONE" },
						c = { fg = "#7f5539", bg = "NONE" },
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
