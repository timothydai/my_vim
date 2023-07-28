" SETTINGS
" Set theme to dark[/light]
set background=dark
set foldmethod=indent
" Make mouse be able to click
set mouse=a
" Make backspace properly delete things in vim 9.0
set backspace=indent,eol,start
" Use relative numbers 
set nu
" Cursor displays absolute number
set rnu
" Set tab widths
set tabstop=4
set shiftwidth=4
set expandtab  " Use spaces as tabs
" Turn on automatic indenting
filetype indent on
filetype plugin indent on
" Always show file path at bottom of screen
set laststatus=2
set hlsearch

" KEY-BINDINGS 
" Be able to move the line under the cursor up or down with alt+j or alt+k
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
" Be able to copy current line and paste above or below with alt+shift+j or
" alt+shift+k
nnoremap Ô :t .+0<CR>
nnoremap  :t .-1<CR>
inoremap Ô <Esc>:t .-1<CR>gi
inoremap  <Esc>:t .+0<CR>gi
" Be able to move left or right one word with alt+h or alt+l
nnoremap ¬ e
nnoremap ˙ b
inoremap ¬ <Esc>lea
inoremap ˙ <Esc>bi

" PLUGINS 
" vim-plug installs
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'vim-scripts/AutoComplPop'
  Plug 'sainnhe/everforest'
  Plug 'easymotion/vim-easymotion'
  Plug 'airblade/vim-gitgutter'
  Plug 'preservim/tagbar'
call plug#end()
" Turn on color theme (must be after vim-plug installs)
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
colorscheme gruvbox
" Set NERDTree keybindings and settings
"   Find the current file in NERDTree
nnoremap <C-f> :NERDTreeFind<CR>
"   Toggle NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
"   Show relative line numbers in NERDTree
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
" Set easymotion keybindings
nmap <Leader>s <Plug>(easymotion-overwin-f)
" Update vim-gitgutter time
set updatetime=250
" Toggle tagbar
nmap <C-g> :TagbarToggle<CR>
