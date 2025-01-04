""""""""""""""""""
"Кодировка:
set encoding=utf-8
""""""""""""""""""
"Быстрый скроллинг
set ttyfast
""""""""""""""""""
"Отключение совместимости с Vi
set nocompatible
""""""""""""""""""
"Игнорирование регистра при поиске
set ignorecase
""""""""""""""""""
"Не игнорировать регистр если в поиске есть большие буквы
set smartcase
""""""""""""""""""
"Подсвечивать найденный паттерн поиска
set hlsearch
""""""""""""""""""
"Интерактивный поиск
set incsearch
""""""""""""""""""
"Системный буфер обмена
set clipboard=unnamedplus
""""""""""""""""""
"Подсветка синтаксиса
syntax on
syntax enable
""""""""""""""""""
"Поддержка цветов
set t_Co=256
""""""""""""""""""
"Тема
colorscheme retrobox
""""""""""""""""""
"Номер строки
set number
"Относительный номер строки
set relativenumber
""""""""""""""""""
"Курсор при скроллинге всегда в середине экрана
set so=30
""""""""""""""""""
"Размер Табов
set tabstop=2
set softtabstop=2
set shiftwidth=2
""""""""""""""""""
"Использование мыши
set mouse=a
"""""""""""""""""""""""""""""""""
call plug#begin("~/.vim/plugged")

"Файловый Менеджер:

Plug 'scrooloose/nerdtree'
let g:NERDTreeShowLineNumbers = 1

"Автозапуск Файлового Менеджера:

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | wincmd p

"Хоткей Для Открытия Файлового Менеджера:

nnoremap <leader>n :NERDTreeToggle<CR>

"Закрытие Файлового Менеджера, если запущен только он:

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Иконки:

Plug 'ryanoasis/vim-devicons'

let g:WebDevIconsUnicodeDecorateFolderNodes = 1

"Панель с информацией:

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='default'

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0

let g:airline_theme='base16_classic'

let g:airline#extensions#tabline#formatter = 'default'

""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#end()
