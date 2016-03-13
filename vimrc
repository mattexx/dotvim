set number
set ruler
set background=dark

syntax on
filetype indent plugin on
au FileType gitcommit set tw=72 cc=72
au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4 colorcolumn=80
au FileType perl setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileType r setlocal ts=2 sts=2 sw=2 expandtab
au BufRead,BufNewFile *.R,*.Rmd set filetype=r
au FileType sh setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileType java setlocal tabstop=4 expandtab shiftwidth=2 softtabstop=2
au FileType puppet setlocal ts=2 sts=2 sw=2 expandtab
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au FileType json setlocal ts=2 sts=2 sw=2 expandtab
au FileType markdown setlocal ts=4 sts=4 sw=4 expandtab textwidth=100 wrap linebreak colorcolumn=100
au BufRead,BufNewFile *.md set filetype=markdown
au FileType ruby setlocal tabstop=4 expandtab shiftwidth=2 softtabstop=2
au FileType eruby setlocal tabstop=4 expandtab shiftwidth=2 softtabstop=2
au FileType css setlocal ts=4 sts=4 sw=4 expandtab

" auto-format JSON
com! FormatJSON %!python -m json.tool

" auto-delete trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" pathogen (bundle management)
call pathogen#infect()

" rainbow parens always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" tmux for slime
let g:slime_target = "tmux"
