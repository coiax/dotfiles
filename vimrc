set runtimepath=~/.vim,$VIMRUNTIME
source ~/.vim/vimrc
syntax on
set wildmode=longest,list
set mouse=a

" Ledger
" au BufNewFile,BufRead .journal setf ledger | comp ledger


" color tastic
color delek

" do stuff
filetype plugin indent on
filetype plugin on

"autocmd FileType python
"autocmd FileType java set noautoindent
" trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" highlight over 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
