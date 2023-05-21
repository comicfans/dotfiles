set nocompatible
filetype off


call plug#begin('~/.vim/bundle')

"vim-scripts
Plug 'joshdick/onedark.vim'

Plug 'tomasiser/vim-code-dark'
Plug 'sainnhe/everforest'
Plug 'github/copilot.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'sickill/vim-monokai'
Plug 'equalsraf/neovim-gui-shim'
Plug 'Raimondi/delimitMate'
Plug 'isRuslan/vim-es6'
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'jalvesaq/Nvim-R', { 'tag': 'v0.9.14'}
"Plug 'vim-utils/vim-man'
"Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/changesPlugin'
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/VimIM'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'tpope/vim-dispatch'
Plug 'p00f/clangd_extensions.nvim'
Plug 'Shougo/echodoc.vim'
Plug 'tell-k/vim-autopep8'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'ray-x/lsp_signature.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'simrat39/symbols-outline.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'simrat39/rust-tools.nvim'

" Optional dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope-ui-select.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
"
"
"
"    " assuming you're using vim-plug: https://github.com/junegunn/vim-plug
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'


"gitb vim repo
"Plug 'gmarik/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'phaazon/hop.nvim'
"Plug 'mcchrish/nnn.vim'
Plug 'Valloric/ListToggle'
Plug 'tikhomirov/vim-glsl'
Plug 'mileszs/ack.vim'
"Plug 'nvim-lua/lsp-status.nvim'



Plug 'vim-scripts/Align'
Plug 'gabrielelana/vim-markdown'
Plug 'itchyny/lightline.vim'

Plug 'mfussenegger/nvim-dap'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'rcarriga/nvim-dap-ui'

call plug#end()

set completeopt=menu,menuone,noselect


syntax on

set fileencoding=utf-8
set laststatus=2

set ignorecase
set smartcase

set fileformat=unix
set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch

imap jk <ESC>
let mapleader=' '
map fk :






let g:load_doxygen_syntax = 1




filetype indent plugin on









       				       	

	



let g:ctrlp_cmd = 'CtrlPMRU'

set ruler
set cursorline
set cursorcolumn


let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle






autocmd BufRead,BufNewFile   *.pro,*pri set ft=qmake

autocmd BufRead,BufNewFile   *.ps,*vs set ft=glsl

autocmd BufRead,BufNewFile   *.Jenkins set ft=groovy


au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 

"persistent undo
set undofile
set undodir=~/.vim/undodir
set undolevels=500




"folding settings
set foldmethod=indent
set foldnestmax=10       "deepest fold is 10 levels
set foldlevel=1         "this is just what i use

"bufexplorer  

set incsearch

"enable changes display

let g:changes_verbose=0
let g:changes_vcs_check=1
let g:changes_vcs_system='git'
let g:changes_fast=1
let g:changes_autocmd=0

noremap <silent> <c-c> :EnableChanges<CR>

set colorcolumn=79
set go=

let g:session_autoload = 'yes'
let g:session_autosave= 'yes'


  
" clang-format
"let g:clang_format='/home/wangxinyu/.local/bin/clang-format'
map <C-K> :pyf /usr/share/clang/clang-format.py<CR>
imap <C-K> <ESC>:pyf /usr/share/clang/clang-format.py<CR>i


inoremap <C-CR>  ; <CR>

map <C-S> :w <CR>

autocmd BufNewFile,BufRead *.vp,*.fp,*.gp,*.vs,*.fs,*.gs,*.tcs,*.tes,*.vert,*.frag,*.geom,*.tess,*.shd,*.gls,*.glsl set ft=glsl450

map <C-G> :Gvdiff <CR>

tmap <ESC> <C-\><C-N>

set spell
    
set makeprg=ninja\ -C\ /home/wangxinyu/alpha/build/asan

map <leader>k <Plug>(Man)

let R_assign = 0


let g:deoplete#enable_at_startup = 1


set cmdheight=2
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'


autocmd FileType python set equalprg=autopep8\ -
autocmd FileType c,cpp set equalprg=clang-format\ -


let g:ackprg = 'ag --vimgrep --smart-case'                                                   
set signcolumn=yes

let maplocalleader = ";"

colorscheme monokai

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'component': {
      \   'helloworld': 'woc'
      \ },
      \ }

set grepprg=rg\ --vimgrep

nnoremap <leader>n :NnnPicker '%:p:h' <CR>


map <F3> :NERDTreeFind<CR>    
map <F12> :NERDTreeToggle<CR>                 
let NERDTreeWinPos='right'

lua << EOF


local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
       completion = cmp.config.window.bordered(),
       documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
      { name = 'buffer'},
      { name = 'path'},
    })
  })



-- local lsp_status = require('lsp-status')
-- lsp_status.register_progress()


local capabilities = require('cmp_nvim_lsp').default_captabilities


local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

--  if client.resolved_capabilities.document_highlight then
--     vim.api.nvim_exec([[
--     hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
--     hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
--     hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
--     augroup lsp_document_highlight
--     autocmd! * <buffer>
--     autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
--     autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
--     augroup END
--     ]], false)
--   end

   --lsp_status.on_attach(client, bufnr)
   require "lsp_signature".on_attach({
      bind = false, -- This is mandatory, otherwise border config won't get registered.
      handler_opts = {
        border = "single"
      }
    }, bufnr)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches

local clangd_opts = { 
                            on_attach = on_attach,
                            --handlers = lsp_status.extensions.clangd.setup(),
                            --init_options = {
                            --    clangdFileStatus  = true
                            --    },
                            cmd = {"/home/wangxinyu/.local/bin/clangd"},
                            capabilities =  capabilities 
                          }

--nvim_lsp["clangd"].setup (clangd_opts)
require('clangd_extensions').setup {
    server = clangd_opts,
    extensions = {
        -- defaults:
        -- Automatically set inlay hints (type hints)
        autoSetHints = true,
        -- These apply to the default ClangdSetInlayHints command
        inlay_hints = {
            -- Only show inlay hints for the current line
            only_current_line = false,
            -- Event which triggers a refersh of the inlay hints.
            -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
            -- not that this may cause  higher CPU usage.
            -- This option is only respected when only_current_line and
            -- autoSetHints both are true.
            only_current_line_autocmd = "CursorHold",
            -- whether to show parameter hints with the inlay hints or not
            show_parameter_hints = true,
            -- prefix for parameter hints
            parameter_hints_prefix = "<- ",
            -- prefix for all the other hints (type, chaining)
            other_hints_prefix = "=> ",
            -- whether to align to the length of the longest line in the file
            max_len_align = false,
            -- padding from the left if max_len_align is true
            max_len_align_padding = 1,
            -- whether to align to the extreme right or not
            right_align = false,
            -- padding from the right if right_align is true
            right_align_padding = 7,
            -- The color of the hints
            highlight = "Comment",
            -- The highlight group priority for extmark
            priority = 100,
        },
        ast = {
            -- These are unicode, should be available in any font
            role_icons = {
                 type = "🄣",
                 declaration = "🄓",
                 expression = "🄔",
                 statement = ";",
                 specifier = "🄢",
                 ["template argument"] = "🆃",
            },
            kind_icons = {
                Compound = "🄲",
                Recovery = "🅁",
                TranslationUnit = "🅄",
                PackExpansion = "🄿",
                TemplateTypeParm = "🅃",
                TemplateTemplateParm = "🅃",
                TemplateParamObject = "🅃",
            },
            --[[ These require codicons (https://github.com/microsoft/vscode-codicons)
            role_icons = {
                type = "",
                declaration = "",
                expression = "",
                specifier = "",
                statement = "",
                ["template argument"] = "",
            },

            kind_icons = {
                Compound = "",
                Recovery = "",
                TranslationUnit = "",
                PackExpansion = "",
                TemplateTypeParm = "",
                TemplateTemplateParm = "",
                TemplateParamObject = "",
            }, ]]

            highlights = {
                detail = "Comment",
            },
        },
        memory_usage = {
            border = "none",
        },
        symbol_info = {
            border = "none",
        },
    },
}

--nvim_lsp.r_language_server.setup({
--                            on_attach = on_attach,
--                            capabilities = capabilities
--                      })

nvim_lsp.tsserver.setup({on_attach = on_attach,
                cmd = {"/home/wangxinyu/node/bin/typescript-language-server", "--stdio"},
                    capabilities =  capabilities 
                        })

nvim_lsp.pyright.setup({
                        on_attach = on_attach,
                        cmd = {"cmake","-E","env","NODE_OPTIONS=--experimental-worker","/home/wangxinyu/.local/bin/pyright-langserver", "--stdio"},
                        capabilities =  capabilities 
})



local rust_opts = {
  tools = { -- rust-tools options

    -- how to execute terminal commands
    -- options right now: termopen / quickfix
    executor = require("rust-tools/executors").termopen,

    -- callback to execute once rust-analyzer is done initializing the workspace
    -- The callback receives one parameter indicating the `health` of the server: "ok" | "warning" | "error"
    on_initialized = nil,

    -- automatically call RustReloadWorkspace when writing to a Cargo.toml file.
    reload_workspace_from_cargo_toml = true,

    -- These apply to the default RustSetInlayHints command
    inlay_hints = {
      -- automatically set inlay hints (type hints)
      -- default: true
      auto = true,

      -- Only show inlay hints for the current line
      only_current_line = false,

      -- whether to show parameter hints with the inlay hints or not
      -- default: true
      show_parameter_hints = true,

      -- prefix for parameter hints
      -- default: "<-"
      parameter_hints_prefix = "<- ",

      -- prefix for all the other hints (type, chaining)
      -- default: "=>"
      other_hints_prefix = "=> ",

      -- whether to align to the length of the longest line in the file
      max_len_align = false,

      -- padding from the left if max_len_align is true
      max_len_align_padding = 1,

      -- whether to align to the extreme right or not
      right_align = false,

      -- padding from the right if right_align is true
      right_align_padding = 7,

      -- The color of the hints
      highlight = "Comment",
    },

    -- options same as lsp hover / vim.lsp.util.open_floating_preview()
    hover_actions = {

      -- the border that is used for the hover window
      -- see vim.api.nvim_open_win()
      border = {
        { "╭", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╮", "FloatBorder" },
        { "│", "FloatBorder" },
        { "╯", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╰", "FloatBorder" },
        { "│", "FloatBorder" },
      },

      -- whether the hover action window gets automatically focused
      -- default: false
      auto_focus = false,
    },

    -- settings for showing the crate graph based on graphviz and the dot
    -- command
    crate_graph = {
      -- Backend used for displaying the graph
      -- see: https://graphviz.org/docs/outputs/
      -- default: x11
      backend = "x11",
      -- where to store the output, nil for no output stored (relative
      -- path from pwd)
      -- default: nil
      output = nil,
      -- true for all crates.io and external crates, false only the local
      -- crates
      -- default: true
      full = true,

      -- List of backends found on: https://graphviz.org/docs/outputs/
      -- Is used for input validation and autocompletion
      -- Last updated: 2021-08-26
      enabled_graphviz_backends = {
        "bmp",
        "cgimage",
        "canon",
        "dot",
        "gv",
        "xdot",
        "xdot1.2",
        "xdot1.4",
        "eps",
        "exr",
        "fig",
        "gd",
        "gd2",
        "gif",
        "gtk",
        "ico",
        "cmap",
        "ismap",
        "imap",
        "cmapx",
        "imap_np",
        "cmapx_np",
        "jpg",
        "jpeg",
        "jpe",
        "jp2",
        "json",
        "json0",
        "dot_json",
        "xdot_json",
        "pdf",
        "pic",
        "pct",
        "pict",
        "plain",
        "plain-ext",
        "png",
        "pov",
        "ps",
        "ps2",
        "psd",
        "sgi",
        "svg",
        "svgz",
        "tga",
        "tiff",
        "tif",
        "tk",
        "vml",
        "vmlz",
        "wbmp",
        "webp",
        "xlib",
        "x11",
      },
    },
  },

  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by rust-tools.nvim
  -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
  server = {
    -- standalone file support
    -- setting it to false may improve startup time
    standalone = true,
    on_attach = on_attach,
    capabilities =  capabilities ,
    cmd = {"/home/wangxinyu/.vscode/extensions/rust-lang.rust-analyzer-0.3.1506-linux-x64/server/rust-analyzer"},
  }, -- rust-analyzer options

  -- debugging stuff
  dap = {
    adapter = {
      type = "executable",
      command = "lldb-vscode",
      name = "rt_lldb",
    },
  },
}


require('rust-tools').setup(rust_opts)
require('rust-tools').inlay_hints.enable()


vim.lsp.set_log_level(4)



require'hop'.setup()

vim.api.nvim_set_keymap('n', '<leader>j', "<cmd>HopWord<cr>", {})

require'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "cpp", "python", "r", "rust"},
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}


require("trouble").setup {

    }

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end




-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
    ["ui-select"] = {
        require("telescope.themes").get_dropdown{
        }
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
require('telescope').load_extension('ui-select')

local signature_config = {
  log_path = vim.fn.expand("$HOME") .. "/tmp/sig.log",
  debug = true,
  hint_enable = false,
  handler_opts = { border = "single" },
  max_width = 80,
}

require("lsp_signature").setup(signature_config)

local outline_opts = {
    position = 'left'
    }

require("symbols-outline").setup(outline_opts)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {focusable = false;})


require("nvim-dap-virtual-text").setup()

require("dapui").setup({
  icons = { expanded = "", collapsed = "", current_frame = "" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- Use this to override mappings for specific elements
  element_mappings = {
    -- Example:
    -- stacks = {
    --   open = "<CR>",
    --   expand = "o",
    -- }
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  expand_lines = vim.fn.has("nvim-0.7") == 1,
  -- Layouts define sections of the screen to place windows.
  -- The position can be "left", "right", "top" or "bottom".
  -- The size specifies the height/width depending on position. It can be an Int
  -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
  -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
  -- Elements are the elements shown in the layout (in order).
  -- Layouts are opened in order so that earlier layouts take priority in window sizing.
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.25 },
        "breakpoints",
        "stacks",
        "watches",
      },
      size = 40, -- 40 columns
      position = "left",
    },
    {
      elements = {
        "repl",
        "console",
      },
      size = 0.25, -- 25% of total lines
      position = "bottom",
    },
  },
  controls = {
    -- Requires Neovim nightly (or 0.8 when released)
    enabled = true,
    -- Display controls in this element
    element = "repl",
    icons = {
      pause = "",
      play = "",
      step_into = "",
      step_over = "",
      step_out = "",
      step_back = "",
      run_last = "",
      terminate = "",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
    max_value_lines = 100, -- Can be integer or nil.
  }
})
EOF



"autocmd CursorHold * lua vim.lsp.buf.hover(nil, { focusable = false})
"autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false})
" autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()
set updatetime=300


function!  LspStatus() abort
    if luaeval('#vim.lsp.buf_get_clients() > 0')
        return luaeval("require('lsp-status').status()")
    endif

    return ''
endfunction

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fk <cmd>Telescope oldfiles<cr>
nnoremap <leader>fs <cmd>Telescope lsp_workspace_symbols<cr>
nnoremap <leader>fj <cmd>Telescope live_grep<cr>
nnoremap <leader>kk <cmd>ClangdSwitchSourceHeader<cr>
nnoremap <leader>fd <cmd>lua vim.lsp.buf.code_action()<cr>
nnoremap <F10> :SymbolsOutline<cr>













set diffopt+=vertical





set number


" old plugins
"Plug 'kien/ctrlp.vim'  
"Plug 'tacahiroy/ctrlp-funky'
"let g:ctrlp_custom_ignore = {
"   \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|lib|out|png|img|bak|db|o)'
"    \ }
"let g:ctrlp_working_path_mode=0
"let g:ctrlp_match_window_bottom=1
"let g:ctrlp_max_height=15
"let g:ctrlp_match_window_reversed=0
"let g:ctrlp_mruf_max=500
"let g:ctrlp_follow_symlinks=1
"
"let g:ctrlp_funky_syntax_highlight = 1
"let g:ctrlp_extensions = ['funky']
"
"let g:Powerline_symbolsa = 'fancy'  
"let g:Powerline_cache_enabled = 1  

