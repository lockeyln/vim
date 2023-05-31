"--------------
" key mapping
"--------------
" disable arrow keys
noremap <UP> <NOP>
noremap <DOWN> <NOP>
noremap <LEFT> <NOP>
noremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

" previous and next buffer
noremap [b :bp<Enter>
noremap ]b :bn<Enter>

" 快速跳转行首与行尾
nnoremap L $
nnoremap H ^
" 向下5行
noremap <C-j> 5j
" 向上5行
noremap <C-k> 5k
" 强制退出
map Q :q<CR>

" 设置Ctrl+HJKL为insert模式移动光标
inoremap jj <Esc>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>


"python相关设置
" 自动创建python文件头
autocmd BufNewFile *.py,*.tex exec ":call SetTitle()"
func! SetTitle()
    if &filetype == 'python'
        call setline(1,"#!/usr/bin/ python3")
        call append(line("."),"# -*- coding:UTF-8 -*-")
        call append(line(".")+1, "# File Name: ".expand("%"))
        call append(line(".")+2, "# Author: xssaw")
        call append(line(".")+3, "# Created Time: ".strftime("%c"))
    endif
    normal Go
endfunc

autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>



"设置跳出自动补全的括号
func SkipPair()
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
        return "\<ESC>la"
    else
        return "\t"
    endif
endfunc
" 将tab键绑定为跳出括号
inoremap <TAB> <c-r>=SkipPair()<CR>
