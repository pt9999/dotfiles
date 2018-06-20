"--------------------------------------------------------------
" NeoBundle Settings
" Gitのサブモジュール化しているので個別インストールは不要だが、
" もしインストールする場合は以下のようにすること。
" $ mkdir -p ~/.vim/bundle
" $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" 

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

    " Let NeoBundle manage NeoBundle
    " Required:
    NeoBundleFetch 'Shougo/neobundle.vim'

    " My Bundles here:
    " Refer to |:NeoBundle-examples|.
    " Note: You don't set neobundle setting in .gvimrc!
    NeoBundle 'Shougo/unite.vim'
    "NeoBundle 'Shougo/neosnippet.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"---------------------------------------------------------------
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
autocmd BufRead,BufNewFile *.py setfiletype python
filetype plugin indent on

" Chdir to file's current directory
set autochdir

" Ignore case 
set ignorecase smartcase

"---------------------------------------------------------------
nnoremap <C-x>1 :only<C-m>
nnoremap <C-x>2 :split<C-m>
nnoremap <C-x>o <C-w><C-w>
nnoremap <C-x>b :ls<C-m>
nnoremap <C-x>p :bp!<C-m>
nnoremap <C-x>n :bn!<C-m>
" Show Keymap
nnoremap <C-x>h :verbose nmap<C-m>
" Edit .vimrc
nnoremap <C-x>- :edit ~/.vimrc
" Reload .vimrc
nnoremap <C-x>^ :source ~/.vimrc<CR>
" Switch ignorecase
nnoremap <C-x>/ :<C-u>set ignorecase!
            \   \|    set ignorecase?<CR>
" NeoBundle Help
nnoremap <C-x>N :edit ~/.vim/bundle/neobundle.vim/doc/neobundle.txt

" Open Current Directory
"nnoremap <C-x>d :<C-u>edit .<CR>
nnoremap <C-x>d :Explore<CR>
nnoremap <C-x><C-d> :Explore<CR>
" Open File
nnoremap <C-x><C-f> :<C-u>edit 

" KeyMap for filetypes
augroup MyGroup
" help: close 
autocmd MyGroup FileType help nnoremap <buffer> q :q<CR>
" netrw: open file
autocmd MyGroup FileType netrw nmap <buffer> f %




