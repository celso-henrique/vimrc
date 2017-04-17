"Configs
syntax on
set relativenumber
set list listchars=tab:»·,trail:·

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 120 characters
set lbr
set tw=120
set wm=0
set fo=cqt

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Git Commit ON 72 chars
autocmd Filetype gitcommit setlocal spell textwidth=72

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ejs
Bundle 'nikvdp/ejs-syntax'

" detect indentation of documents
Plugin 'ciaranm/detectindent'
autocmd BufReadPost * :DetectIndent

" scss and css syntax
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'

" Vim Stylus CSS
Plugin 'wavded/vim-stylus'

" NERDTree
Bundle 'scrooloose/nerdtree'

" Solarized Theme
Plugin 'altercation/vim-colors-solarized'

" colors preview
Plugin 'ap/vim-css-color'

" Aitline
Plugin 'bling/vim-airline'

" Ctrlp
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'

" JS syntax
Plugin 'isRuslan/vim-es6'

"editor config
Plugin 'editorconfig/editorconfig-vim'

" Syntastic
Bundle 'scrooloose/syntastic'
Plugin 'mtscout6/syntastic-local-eslint.vim'

" Prettier
Plugin 'sbdchd/neoformat'
autocmd FileType javascript set formatprg=prettier-standard\ --stdin\ --parser\ flow\ --single-quote
let g:neoformat_try_formatprg = 1
autocmd BufWritePre *.js Neoformat

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_exec = ''
let g:syntastic_html_tidy_blocklevel_tags = ['update-title', 'update-meta']
let g:syntastic_javascript_checkers = ['eslint', 'jshint']

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set background=dark
colorscheme solarized
