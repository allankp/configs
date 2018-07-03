set nocompatible 
set nu
set encoding=utf-8
set clipboard=unnamed
filetype off

set splitbelow
set splitright

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/indentpython.vim'

call vundle#end()
filetype plugin indent on

" python
let python_highlight_all=1
syntax on
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" ctrlp fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" snippets
nnoremap <leader>p Oimport pdb; pdb.set_trace()<Esc>

" keymaps
map <C-n> :NERDTreeToggle<CR>
