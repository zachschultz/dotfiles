if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Dein update ui
  call dein#add('wsdjeg/dein-ui.vim')

  " Colorscheme!
  call dein#add('drewtempelmeyer/palenight.vim')

  " Async completion framework
  call dein#add('Shougo/deoplete.nvim')
  " Rust completions
  call dein#add('sebastianmarkow/deoplete-rust')
  call dein#add('scrooloose/nerdtree')

  " i3 config syntax
  call dein#add('mboughaba/i3config.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

    " Set colorscheme settings
    set background=dark
    colorscheme palenight
    if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
      set termguicolors
    endif

    " Italics for my favorite color scheme
    let g:palenight_terminal_italics=1

	" Use deoplete.
	let g:deoplete#enable_at_startup = 1
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

    " deoplete-rust
	let g:deoplete#sources#rust#racer_binary='/home/zach/.cargo/bin/racer'
	let g:deoplete#sources#rust#rust_source_path='/home/zach/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'


    " NERDTree
	map <C-n> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1


" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
" }}}
