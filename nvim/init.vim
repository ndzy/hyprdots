syntax on

colorscheme default

set number

set ttyfast

set so=30

call plug#begin("~/.vim/plugged")

"----------------------Файловый Менеджер:

Plug 'scrooloose/nerdtree'

"----Автозапуск Файлового Менеджера----"


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd p


"----Хоткей Для Открытия Файлового Менеджера----"


nnoremap <leader>n :NERDTreeToggle<CR>


"----Закрытие Файлового Менеджера, если запущен только он----"

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


"----------------------------------Блатные Иконки:


Plug 'ryanoasis/vim-devicons'

let g:WebDevIconsUnicodeDecorateFolderNodes = 1


"------------------------------------Панель Говна:

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0

let g:airline_theme='minimalist'

let g:airline#extensions#tabline#formatter = 'default'

"-----------------------------------------------------

call plug#end()

