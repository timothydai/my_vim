set background=dark
set mouse=a

set backspace=indent,eol,start

set number relativenumber
set nu rnu

set tabstop=4
set shiftwidth=4

filetype indent on
set laststatus=2
filetype plugin indent on

set expandtab
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'vim-scripts/AutoComplPop'
  Plug 'sainnhe/everforest'
call plug#end()
colorscheme gruvbox

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" Be able to move the line under the cursor up or down with alt+j or alt+k
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

" Change alt+h and alt+l to move by word
nnoremap ˙ b
nnoremap ¬ w
inoremap ˙ <Esc>bi
inoremap ¬ <Esc>wwi
