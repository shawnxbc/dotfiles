syntax on			" 开启语法高亮

set hidden          " 允许不保存当前更改就跳转buffer
set wildmenu		" 显示补全菜单
set tabstop=4		" 以4个空格显示现有的Tab键
set softtabstop=4	" 当你按下Tab键的时候光标缩进4个空格
set shiftwidth=4	" >> 向右缩进4个空格
set expandtab		" 从编码级别将Tab(\x09)替换成一系列的空格(\x20) 
set autoindent		" 回车(或者o,O)换行时将当前行的缩进应用到下一行
set number			" 开启行号
set relativenumber	" 开启相对行号
set directory=$HOME/.vim/swp//	" 将交换文件放置到固定目录，需先创建该目录
set nobackup		" 不使用Vim的备份机制
set nowb
set undofile		" 跨会话持久保存undo history
set undodir=~/.vim/undodir		" 把undo history文件放置到固定目录，需先创建该目录
set incsearch		" 在键入pattern的同时就渐进式地进行查找
set hlsearch		" 高亮符合pattern的字符串
set ignorecase		" 忽略大小写
set smartcase		" 当pattern包含大写字母时，不忽略大小写
set scrolloff=5		" 垂直滚动屏幕时光标距离顶部/底部的行数
set sidescrolloff=20" 水平滚动屏幕时光标距离左侧/右侧的列数
nnoremap <silent> <Esc><Esc> :let @/=""<CR>	" 连按两次<Esc>清空/寄存器的pattern，取消高亮
											" <silent>表示在使用该命令的时候不输出信息
set laststatus=2	" 显示并设置状态栏
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)(%p%%)\
colorscheme desert	" 设置颜色主题为desert
filetype indent on	" 根据文件类型加载对应的缩进配置

" vim-plug 插件管理
call plug#begin('~/.vim/plugged')	" 插件列表从这里开始，指定存放目录

Plug 'preservim/nerdtree'

call plug#end()		" 初始化插件系统

map <C-o> :NERDTreeToggle<CR> " 设置打开NERDTree的快捷键
