set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

Plugin 'wlue/vim-dm-syntax'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-eunuch'
Plugin 'chr4/nginx.vim'
Plugin 'sbdchd/neoformat'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'https://gitlab.com/gi1242/vim-emoji-ab.git'
Plugin 'airblade/vim-gitgutter'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" A sane way to autocomplete filenames
set wildmode=longest,list

" Not actually the default in Ubuntu's Vim
set mouse=a

" The unnamed default register will go to the system's clipboard
set clipboard=unnamedplus

" I've found that delek is the best colour scheme for me.
color delek

" Highlight trailing whitespace in AGGRESSIVE ANGRY RED
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" :w!! to save as root.
cmap w!! SudoWrite

" Enable shortcodes like :fire: -> 🔥 in git commits
autocmd FileType gitcommit runtime macros/emoji-ab.vim
autocmd BufRead,BufNewFile *.pyi setfiletype python

" vim-gitgutter recommends that we increase vim's updatetime option
set updatetime=100

" Enable highlighting when searching for text
set hlsearch

" Disable code folding
set nofoldenable
