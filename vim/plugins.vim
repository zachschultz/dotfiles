"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/zachschultz/.cache/dein/repos/github.com/Shougo/dein.vim
set rtp+=/usr/local/opt/fzf

" Required:
if dein#load_state('/Users/zachschultz/.cache/dein')
  call dein#begin('/Users/zachschultz/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/zachschultz/.cache/dein/repos/github.com/Shougo/dein.vim')
	call dein#add('Shougo/vimproc.vim', {
	    \ 'build': {
	    \     'windows': 'tools\\update-dll-mingw',
	    \     'cygwin': 'make -f make_cygwin.mak',
	    \     'mac': 'make -f make_mac.mak',
	    \     'linux': 'make',
	    \     'unix': 'gmake',
	    \    },
	    \ })
	call dein#add('Shougo/unite.vim')

	call dein#add('tpope/vim-surround')
	call dein#add('tpope/vim-commentary')
	call dein#add('tpope/vim-unimpaired')

	call dein#add('scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'})

	call dein#add('/usr/local/opt/fzf')
	call dein#add('junegunn/fzf.vim')

	" Syntax
	call dein#add('luochen1990/rainbow')
	call dein#add('pangloss/vim-javascript')
	call dein#add('mxw/vim-jsx',
	      \{'on_ft': ['js']})
	call dein#add('isRuslan/vim-es6',
	      \{'on_ft': ['js']})
	call dein#add('moll/vim-node')

	" Git
	call dein#add('airblade/vim-gitgutter')

	" Interface
	  " Colors
	  call dein#add('chriskempson/base16-vim')
	  " Tabs, status line
	  call dein#add('vim-airline/vim-airline')
	  call dein#add('vim-airline/vim-airline-themes')

	" Unite interfaces
	call dein#add('Shougo/denite.nvim')
	call dein#add('Shougo/deoplete.nvim', {'on_event': 'InsertEnter'})

	call dein#add('Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' })


	" Linting
	" call dein#add('w0rp/ale')
	call dein#add('ternjs/tern_for_vim')
	call dein#add('carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' })
	call dein#add('neomake/neomake')



	" JS Syntax
	call dein#add('heavenshell/vim-jsdoc')
	call dein#add('JamshedVesuna/vim-markdown-preview')
	call dein#add('jeetsukumaran/vim-buffergator')
	call dein#add('Yggdroot/indentLine')
	call dein#add('majutsushi/tagbar')
	call dein#add('elixir-editors/vim-elixir')
	call dein#add('slashmili/alchemist.vim')

	" TypeScript
	  call dein#add('HerringtonDarkholme/yats.vim')
	  call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Plugin settings
" ALE linting
  let g:ale_python_flake8_executable = '/usr/local/bin/flake8'
  let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'python': ['autopep8'],
  \}
  let g:ale_fix_on_save = 1

  " fzf
    nnoremap <C-p> :FZF<CR>

  " base16-vim
    let base16colorspace=256  " Access colors present in 256 colorspace
    if filereadable(expand("~/.vimrc_background"))
      source ~/.vimrc_background
    endif
    " colorscheme base16-dracula
    "
  " NERDTree
    " Open automatically when vim starts, if no files specified
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    " Toggle NERDTree
    map <C-n> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1

  " deoplete
    let g:deoplete#enable_at_startup = 1
    inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  " tern_for_vim
    let g:tern#is_show_argument_hints_enabled = 1
  " deoplete-ternjs
    " Whether to use a case-insensitive compare between the current word and
    " potential completions. Default 0
    let g:deoplete#sources#ternjs#case_insensitive = 1
    " Use tern_for_vim.
    let g:tern#command = ["tern"]
    let g:tern#arguments = ["--persistent"]

  "ack
    nmap <leader>a :Ack

  " rainbow
    nmap <leader>R :RainbowToggle<CR>
    let g:rainbow_active = 1

  " neomake
    let g:neomake_open_list=0
    let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
    let g:neomake_javascript_enabled_makers = ['eslint']
    let g:neomake_jsx_enabled_makers = ['eslint']
    let g:jsx_ext_required = 1 " Allow JSX in normal JS files
    let g:neomake_logfile = '/usr/local/var/log/neomake.log'

    let g:neomake_warning_sign = {
      \ 'text': '?',
      \ 'texthl': 'WarningMsg',
      \ }

    let g:neomake_error_sign = {
      \ 'text': 'X',
      \ 'texthl': 'ErrorMsg',
      \ }

    " Run neomake when reading/writing a buffer,
    "   and making changes on insert/normal mode (after 1s, no delay when writing)
    call neomake#configure#automake('nrwi', 1000)

  " vim-javascript
    let g:javascript_plugin_jsdoc = 1

  " vim-jsdoc
    let g:jsdoc_allow_input_prompt = 1
    let g:jsdoc_input_description = 1
    nmap <silent> <leader>d <Plug>(jsdoc)

  " vim-markdown-preview
    let vim_markdown_preview_github = 1

  " buffergator
    " Use the right side of the screen
    let g:buffergator_viewport_split_policy = 'R'

    " I want my own keymappings...
    let g:buffergator_suppress_keymaps = 1

    " Looper buffers
    let g:buffergator_mru_cycle_loop = 1

    " Go to the previous buffer open
    nmap <leader>jj :BuffergatorMruCyclePrev<cr>

    " Go to the next buffer open
    nmap <leader>kk :BuffergatorMruCycleNext<cr>

    " View the entire list of buffers open
    nmap <leader>bl :BuffergatorOpen<cr>

  " indentLine
    " custom char used
    let g:intentLine_enabled = 1
    let g:indentLine_char = '⟩'

  " vim-airline
  let g:airline#extensions#tabline#enabled=1
  let g:airline_powerline_fonts=1
