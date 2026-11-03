" ── Configurações de Aparência e Cores ──
syntax on
set termguicolors
set background=dark
set relativenumber

" Tenta carregar o catppuccin; caso não esteja instalado, usa o tema nativo
silent! colorscheme catppuccin-mocha

" ── Overrides (Paleta Cabin in the Woods & Turquoise Lake) ──
" Fundo verde-floresta escuro musgo (#0c1914) e texto verde-névoa (#a2d5b6)
highlight Normal guifg=#a2d5b6 guibg=#0c1914
highlight NormalNC guifg=#237a62 guibg=#0c1914

" Coluna lateral e numeração de linhas
highlight SignColumn guibg=#0c1914
highlight LineNr guifg=#1b3c29 guibg=#0c1914
highlight CursorLine guibg=#1b3c29
highlight CursorLineNr guifg=#e2af60 gui=bold

" Seleção visual e busca (Destaques em Ciano do Lago e Dourado Terroso)
highlight Visual guifg=#0c1914 guibg=#34b8a5
highlight Search guifg=#0c1914 guibg=#e2af60

" Divisores de janela
highlight VertSplit guifg=#1b3c29 guibg=#0c1914

" Barra de status nativa (StatusLine ativas e inativas)
highlight StatusLine guifg=#34b8a5 guibg=#1b3c29 gui=bold
highlight StatusLineNC guifg=#237a62 guibg=#0c1914 gui=none

" Popups e Menus de Autocompletar (Pmenu)
highlight Pmenu guifg=#a2d5b6 guibg=#1b3c29
highlight PmenuSel guifg=#0c1914 guibg=#34b8a5 gui=bold

" ── Definir a tecla Leader para Espaço ──
let mapleader = " "

" ── Mover linhas selecionadas para cima/baixo (Modo Visual) ──
xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '<-2<CR>gv=gv

" ── Navegação rápida entre janelas/splits (Ctrl + h/j/k/l) ──
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ── Redimensionar janelas com as setas ──
nnoremap <C-Up>    :resize -2<CR>
nnoremap <C-Down>  :resize +2<CR>
nnoremap <C-Left>  :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" ── Limpar destaques de busca com <Esc> ──
nnoremap <Esc> :noh<CR>

" ── Netrw (Navegador de arquivos nativo do Vim) ──
" Espaço + e para abrir/fechar o explorador de arquivos
nnoremap <leader>e :Lexplore<CR>

" Ajusta o tamanho da barra lateral do Netrw
let g:netrw_winsize = 25
let g:netrw_banner = 0 " Remove o cabeçalho do Netrw
