set nocompatible 
set nu
set encoding=utf-8
set clipboard=unnamed
filetype off

set splitbelow
set splitright

"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" added nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

map <C-n> :NERDTreeToggle<CR>

" powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" pretty colours
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" syntax stuff
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on

" ctrlp fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" pep8
Plugin 'vim-scripts/indentpython.vim'

" snippets
nnoremap <leader>p Oimport pdb; pdb.set_trace()<Esc>
