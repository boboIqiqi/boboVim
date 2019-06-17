":setlocal makeprg=ndk-build
":setlocal makeprg=%NDK64_HOME%\ndk-build\ NDK_PROJECT_PATH=.\ APP_BUILD_SCRIPT=./Android.mk\ APP_ABI=arm64-v8a
":setlocal efm=%f:%l:%m
"set spell
"set spellfile=$VIMRUNTIME\spell\MCtrl.add
"增加按十进制
"set nrformats-=octal
"
"设置折叠格式
"set foldmethod=syntax
"set number relativenumber
"augroup numbertoggle
"autocmd!
"autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END
"
"if has("gui_running")
"    set encoding=utf-8
"    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" 
"    if has("win32")
"        set fileencoding=utf-8
"    else
"       set fileencoding=utf-8
"    endif
" 
"    let &termencoding = &encoding
" 
"    "解决菜单乱码
"    source $VIMRUNTIME/delmenu.vim
"    source $VIMRUNTIME/menu.vim
" 
"    "解决consle输出乱码
"    language messages zh_CN.utf-8
"endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置图形界面。
"
" 字体部分，可参考《程序员最喜欢用的编程字体》一文：
" http://www.2maomao.com/blog/best-programmer-fonts/
"
"如果你的字体名中有空格或者逗号, 你就需要用一个反斜线转义了. 如:
"set guifont=Courier\ New\ 12
"if has("gui_running")
"    if has("win32")
"        " 设定 windows 下 gvim 启动时最大化
"        autocmd GUIEnter * simalt ~x
"        " 设定 windows 下图形界面下的字体。该字体需要自己下载安装，下载地址：
"        " http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bitstream-vera-1.10.zip
"        " set guifont=Bitstream_Vera_Sans_Mono:h14:cANSI
"        " 下面这个是我自己喜欢的一个字体
"        "set guifont=YaHei_Consolas_Hybrid:h12:cGB2312
""        set guifontwide=幼圆:h13:cGB2312
"    else
"        " 设定 linux 下图形界面下的字体，该字体 Fedora 7 自带
"        set guifont=DejaVu\ LGC\ Sans\ Mono\ 12
"        "set guifont=YaHei_Consolas_Hybrid:h12:cGB2312
"    endif
"endif
" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
"if has("gui_running")
"    colorscheme desert "or koehler
"else
"    colorscheme evening
"endif
"evening         " 设定背景为夜间模式
filetype plugin on          " 自动识别文件类型，自动匹配对应的
                            " “文件类型Plugin.vim”文件，使用缩进定义文件
set ambiwidth=double        " ambiwidth 默认值为 single。在其值为 single 时，
                            " 若 encoding 为 utf-8，gvim 显示全角符号时就会
                            " 出问题，会当作半角显示。
set autochdir               " 自动切换当前目录为当前文件所在的目录
set autoindent cindent cinoptions=g0
                            " 打开自动缩进和 C 语言风格的缩进模式，
                            " 定制 C 语言缩进风格
"set backspace=indent,eol,start
                            " 不设定的话在插入状态无法用退格键和 Delete
                            " 键删除回车符
set backupcopy=yes          " 设置备份时的行为为覆盖

"if v:version >= 700
"    set completeopt=menu,longest,preview
"                            " 自动补全(ctrl-p)时的一些选项：
                            " 多于一项时显示菜单，最长选择，
                            " 显示当前选择的额外信息
"endif
 
set fileformat=dos          " unix|dos|mac，在windos下unix格式不换行。
set confirm                 " 用确认对话框（对于 gvim）或命令行选项（对于
                            " vim）来代替有未保存内容时的警告信息
set display=lastline        " 长行不能完全显示时显示当前屏幕能显示的部分。
                            " 默认值为空，长行不能完全显示时显示 @。
set expandtab               " 将 tab 键转换为空格
set formatoptions=tcqro     " 使得注释换行时自动加上前导的空格和星号
"set hidden                  " 允许在有未保存的修改时切换缓冲区，
                            " 此时的修改由切换由 vim 负责保存
set history=500             " 设置冒号命令和搜索命令的命令历史列表的长度为 50


set nohlsearch                " 搜索时高亮显示被找到的文本
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时
                            " 仍保持对大小写敏感
set incsearch               " 输入搜索内容时就显示搜索结果
set mouse=a                 " 设定在任何模式下鼠标都可用
set nobackup                " 覆盖文件时不备份
set nocompatible            " 设定 gvim 运行在增强模式下
"set noignorecase            " 默认区分大小写
set nolinebreak             " 在单词中间断行
set number                  " 显示行号
set ruler                   " 打开状态栏标尺
set scrolloff=5             " 设定光标离窗口上下边界 5 行时窗口自动滚动
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set showcmd                 " 在状态栏显示目前所执行的指令，未完成的指令片段亦
                            " 会显示出来
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
                            " （不足 4 个时删掉所有剩下的空格）
set tabstop=4               " 设定 tab 长度为 4
set whichwrap=b,s,<,>,[,]   " 设定退格键、空格键以及左右方向键在行首行尾时的
                            " 行为，不影响 h 和 l 键
"set nowrap                  " 自动换行显示
syntax on                   " 自动语法高亮
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" 设置命令行和状态栏
 
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
"set statusline=%F%m%r\ \|\ %Y,%{&fileencoding}\ \|%=\ %l/%L,%c\ \|\ %f
set statusline=%F%m%r\ \|\ %{&ff},%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"},%Y\ \|%=\ %l/%L,%c\ \|\ %f
                            " 设置在状态行显示的信息如下：
                            " %f    当前的文件名
                            " %F    当前全路径文件名
                            " %m    当前文件修改状态
                            " %r    当前文件是否只读
                            " %Y    当前文件类型
                            " %{&fileformat}
                            "       当前文件编码
                            " %{&fileencoding}
                            "       中文编码
                            " %b    当前光标处字符的 ASCII 码值
                            " %B    当前光标处字符的十六进制值
                            " %l    当前光标行号
                            " %c    当前光标列号
                            " %V    当前光标虚拟列号 (根据字符所占字节数计算)
                            " %p    当前行占总行数的百分比
                            " %%    百分号
                            " %L    当前文件总行数
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" 自动命令
 
" 读文件时自动设定当前目录为刚读入文件所在的目录
autocmd BufReadPost * cd %:p:h
 
"cscope
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
"for omnicppcomplete
set nocp
let OmniCpp_MayCompleteScope = 1
let OmniCpp_ShowPrototypeInAbbr = 1
 
"auto-close proview
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
 
"temp"
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" Alt+数字切换Table快捷键设置
 
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

""""我的设置
let mapleader = "\<Space>"

cnoremap <expr> %% getcmdtype()==':' ? expand('%:h').'/' : '%%'

nnoremap <Leader>s :w<CR>
nnoremap <Leader>m :update<CR>:make<CR>
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>a *:vim///g *.c *.h<CR>
nnoremap <Leader>v gg"adGp:%s/\n/ /g<CR>ggyG:x<CR>
nnoremap <Leader>C :%s///gn<CR>
nnoremap <Leader>U gUaw
nmap <F6> :cp<CR>
nmap <F7> :cn<CR>

nnoremap <Leader>w <C-W><C-W><CR>

"退出快捷键
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q!<CR>

nnoremap <Leader>E :%s/\r//g<CR>
nnoremap <Leader>e :e.<CR>
set clipboard=unnamed  "共享剪切板

"普通模式下换行
:nnoremap <C-j> i<C-j><Esc>
:nnoremap <C-k> a<C-j><Esc>

"设置自动添加TOC目录
nnoremap <Leader>t ggO[TOC]<Esc><C-o>
nnoremap <Leader>1 I# 
nnoremap <Leader>2 I## 
nnoremap <Leader>3 I### 
nnoremap <Leader>4 I#### 
nnoremap <Leader>5 I##### 

"关于定位到开头与结尾
"nnoremap <CR> G
nnoremap <BS> gg

"nnoremap <C-2> ## 
"nnoremap <C-3> ### 

":nnoremap <C-t> ggO[TOC]<Esc><C-o>

"自制的注释与反注释快捷键
":nnoremap <C-c> 0i//<Esc>
":nnoremap <C-y> 0xx

noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR><ESC>

"启动后最大化,only can be used in windows
"autocmd GUIENTER * simalt ~x

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
    let buffer_numbers = {}
    for quickfix_item in getqflist()
        let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
    endfor
    return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

set number
colorscheme desert
" colorscheme torte

"选择命令时，不用通过up和Down键进行选择
"nnoremap  <Up>
"nnoremap  <Down>

set incsearch "增量查找
"设置Ex命令和查找命令的记录历史条数
set history=200
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 
"set gfn=Consolas:h11
"set textwidth=0


"设置Vim使用的shell为msysGit的shell
":set shell=\"c:\program\ files\unix\sh.exe\"\ -f
":set shell="C:\Program Files\Git\bin\sh.exe" -f

"F5键插入当前系统的时间
":nnoremap <F5> "=strftime("%Y%m%d %T")<CR>p
":inoremap <F5> <C-R>=strftime("%Y%m%d %T")<CR>p

nnoremap <F5> "=strftime("%Y年%m月%d日")<CR>P
inoremap <F5> <C-R>=strftime("%Y年%m月%d日")<CR>

:set tags=./tags,tags
:set autochdir

:nnoremap <leader>c :!ctags -R<CR>
:nnoremap <leader>T :!ctags -R<CR>
":nnoremap <leader>t :!make clean && make && ./main<CR>

"nnoremap <leader>r :!%<CR>
nnoremap <leader>r :execute "!".iconv('"'.@%.'"','UTF-8','cp936')<CR>
"nnoremap ;cc ^v$"mc:<C-r>c<cr>
nnoremap <leader>R ^Vy:!<C-r>"<CR>
vmap <leader>R y:!<C-r>"<CR>

nnoremap <leader>h :shell<CR>
:set noswapfile  "禁止产生中间文件
:set autoread

"将<C-l>键用于关闭高亮显示
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

runtime macros/matchit.vim

"fast reloading of the.vimrc
"map <silent> <leader>w :source $VIM/_vimrc<cr>
"fast editing of.vimrc
"map <silent> <leader>e :e $VIM/_vimrc<cr>

"when .vimrc is edited ,reloadit
"autocmd! bufwritepost bobo_vimrc source $VIM/_vimrc

set path+=C:/eDisk/13-4G/4Gv2/SecSuit/proj/Linux/auditserver/*

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :bLast<CR>


"YouCompleteMe
"set runtimepath+=$VIM/vimfiles/bundle/YouCompleteMe/

"Vundle
"filetype off  
" 此处规定Vundle的路径  
"set rtp+=$VIM/vimfiles/bundle/vundle.vim/  
"call vundle#rc('$VIM/vimfiles/bundle/')  
"Bundle 'gmarik/vundle'  
"filetype plugin indent on  
  
" original repos on github<br>Bundle 'mattn/zencoding-vim'  
"Bundle 'drmingdrmer/xptemplate'  
"Bundle 'tpope/vim-commentary'
"Bundle 'tpope/vim-unimpaired'
"Bundle 'tpope/vim-surround'

"Bundle 'kana/vim-textobj-entire'
"Bundle 'kana/vim-textobj-lastpat'
"Bundle 'tpope/vim-abolish'

" vim-scripts repos  
"Bundle 'L9'  
"Bundle 'FuzzyFinder'  
"Bundle 'bufexplorer.zip'  
"Bundle 'taglist.vim'  
"Bundle 'Mark'  
"Bundle 'The-NERD-tree'  
"Bundle 'matrix.vim'  
"Bundle 'closetag.vim'  
"Bundle 'The-NERD-Commenter'  
"Bundle 'matchit.zip'  
"Bundle 'AutoComplPop'  
"Bundle 'jsbeautify'  
"Bundle 'YankRing.vim'  
"filetype plugin indent on     " required! 
