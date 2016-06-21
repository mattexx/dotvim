set number
set ruler
set background=dark
set backspace=indent,eol,start

syntax on
filetype indent plugin on
"au BufRead,BufNewFile *.edn set filetype=clj
au FileType gitcommit set tw=72 cc=72
au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4 colorcolumn=80
au FileType perl setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileType r setlocal ts=2 sts=2 sw=2 expandtab
au BufRead,BufNewFile *.R,*.Rmd set filetype=r
au FileType sh setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType java setlocal tabstop=4 expandtab shiftwidth=2 softtabstop=2
au FileType puppet setlocal ts=2 sts=2 sw=2 expandtab
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au FileType json setlocal ts=2 sts=2 sw=2 expandtab
au FileType markdown setlocal ts=4 sts=4 sw=4 expandtab textwidth=100 wrap linebreak colorcolumn=100
au BufRead,BufNewFile *.md set filetype=markdown
au FileType ruby setlocal tabstop=4 expandtab shiftwidth=2 softtabstop=2
au FileType eruby setlocal tabstop=4 expandtab shiftwidth=2 softtabstop=2
au FileType css setlocal ts=4 sts=4 sw=4 expandtab

" mapping for next/prev block
map <C-a> /\n\+\n/e+1<CR>
map <C-x> ?\n\+\n?e+1<CR>

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

" rainbow parens for dark
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ]
let g:rbpt_max = 16

" tmux for slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

