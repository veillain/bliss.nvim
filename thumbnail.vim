" coincidence's init.vim

" UI based settings

let &t_0f = "\<esc>[30;2;%lu,%lu;%lum"      " allows termguicolors to work


let &t_8b = "\<esc>[48;2;%lu,%lu;%lum"
set termguicolors
set background=dark
syntax on 
colorscheme bliss
set ruler
set number relativenumber
set laststatus=2
set noshowmode

" rebinding vim's split navigation


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" more natural vim splittings

set splitbelow
set splitright

" lightline colorscheme
