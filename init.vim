"plugis
call plug#begin('~/.local/share/nvim/plugged')
"Plugins de NVIM Basicos
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'   " Explorador de Archivos:
Plug 'vim-airline/vim-airline' "Barra de Estado
Plug 'vim-airline/vimairline-themes'  " Temas para airline
Plug 'Yggdroot/indentLine' " Guias de Identación
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocompletado asincrono para Neovim
Plug 'Shougo/neco-syntax' " Fuente general de autocompletado
Plug 'ervandew/supertab'
Plug 'Shougo/echodoc.vim' " Muestra la firma de la función Plug 'sirver/ultisnips' " Provee Opciones de codigo Reusables
Plug 'honza/vim-snippets'
Plug 'w0rp/ale' " Analizador de Codigo estatico asincrono
Plug 'sheerun/vim-polyglot' " Resaltado de sintaxis
Plug 'ludovicchabant/vim-gutentags' " administrador de archivos tag
"Plugings para desarrollo WEB
Plug 'hail2u/vim-css3-syntax', {'for': 'css'} "CSS
Plug 'othree/html5.vim', { 'for': 'html' } " HTML
Plug 'pangloss/vim-javascript', { 'for': 'javascript' } "JavaScript
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Markdown

" Pluging Utiles
Plug 'tpope/vim-surround' " Facilita poner/quitar/cambiar comillas, parentesis. tags stc sobre un texto
Plug 'tpope/vim-eunuch' " Provee comandos de Sistemas Unix
Plug 'jiangmiao/auto-pairs' " inserta pares de comillas y parentesis
Plug 'scrooloose/nerdcommenter' " Facilita agregar y quitar comentarios

" Plugins para git
Plug 'tpope/vim-fugitive'  " Provee comandos de git
Plug 'airblade/vim-gitgutter' " Muestra cambios hechos en el archivo en la columna con signos
Plug 'xuyuanp/nerdtree-git-plugin' " Muestra el estado de los archivos para NERDTREE

call plug#end()
" Abajo se agregan configuraciones y mappings


set title  " Muestra el nombre del archivo en la ventana de la terminal
set number relativenumber  " Muestra los números de las líneas
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)

set nowrap  " No dividir la línea si es muy larga

set cursorline  " Resalta la línea actual
set colorcolumn=180  " Muestra la columna límitei a 1 caracteres

" Indentación a 4 espacios
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

"Configuraciones de Tema
set termguicolors  " Activa true colors en la terminal
colorscheme onedark " Activa tema onedark

"Configuraciones de NERDTree
let g:NERDTreeChDirMode = 2 " Cambia el directorio actual al nodo padre actual
" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>


" Configuraciones Barra de Estado
let g:airline#extensions#tabline#enabled = 1 " Mostrar buffers abiertos como pestañas
let g:airline#extension#tabline#fnamemod = ':t' " Mostrar Solo el nombre del archivo
" Cargar fuente Powerline y simbolos
let g:airline_powerline_fonts = 1

set noshowmode "No mostrar el modo actual (Ya lo muestra la barra de estado

" Configuración guia de Identación
    "No mostrar en ciertos tipos de buffers y archivos
let g:identLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:identLine_bufNameExclude = ['NERD_tree.*', 'term:.*']


" Configuracion de Autocompletado
    "Activar deoplete al iniciar Neovim
let g:deoplete#enable_at_startup = 1
    " Cerrar automaticamente la ventana de vista previa (donde se muestra la documentacion si existe)
augroup deopleteCompleteDoneAu
    autocmd!
    autocmd CompleteDone * silent! pclose
augroup END


"Configuraciones de Supertab
    " Invertir dirección de navegación (de arriba a abajo)
let g:SuperTabDefaultCompletionType = '<c-n>'


" Configuración de echodoc
     "Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1


"Configuración de Snippets codigo reusable
    "Expandir Snippet con Ctrl + j
let g:UltiSnipsExpandTrigger = '<c-j>'
"Ir al la siguiente ubicación con Ctrl + j
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
"Ir a la anterior ubicación con Ctrl + k
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'


" Configuración de Analizador de codigo ALE
    "Mostrar mejor mensajes de error
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Configuración de Gutantags 
    "Nombre del archivo Generado
let g:gutentags_ctags_tagfile = '.tags'

" Configuración de Nerdcommenter
let g:NERDSpaceDElims = 1 " Agregar un espacio despues del limitador del comentario
let g:NERDTrimTrailingWhitespace = 1 " Quitar espacios al quitar comentario

" Configuraciones para git
set updatetime=250 " Actualizar barra cada 250 mili seg
