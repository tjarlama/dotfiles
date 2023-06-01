call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'nordtheme/vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'Valloric/YouCompleteMe'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()


" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

set encoding=UTF-8

let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"if (has("termguicolors"))
"  set termguicolors
"endif
set background=dark
set t_Co=256
colorscheme nord

autocmd TermOpen * startinsert
autocmd TermOpen * setlocal nonumber norelativenumber
tnoremap <C-W>n <C-\><C-n>
if has('nvim')
    "autocmd TermOpen term://* startinsert
    "autocmd BufEnter,BufNew term://* startinsert
	autocmd BufWinEnter,WinEnter term://* startinsert
    "autocmd BufEnter,BufNew,BufWinEnter,WinEnter term://* startinsert
	"autocmd BufLeave term://* stopinsert
    "augroup terminal_setup | au!
    "    autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i
    "    " more stuff
    "augroup end
endif

command Bd bp | sp | bn | bd

set expandtab
set tabstop=4
set shiftwidth=4
set paste
set number
set mouse=a
set autoindent

