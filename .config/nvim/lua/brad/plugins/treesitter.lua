return {
    {
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate",
        config = function()

            require'nvim-treesitter.configs'.setup {
                -- A list of parser names, or "all" (the four listed parsers should always be installed)
                ensure_installed = {},
                ignore_install = {},
                modules = {},


                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = false,

                -- List of parsers to ignore installing (for "all")
                ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
                -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

                highlight = {
                    -- ...
                    enable = true,
                    additional_vim_regex_highlighting = {"javascript"},
                },
                -- indent = {
                --     enable = true
                -- },
                -- ...
                rainbow = {
                    enable = true,
                    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
                    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                    max_file_lines = nil, -- Do not enable for files with more than n lines, int
                    -- colors = {}, -- table of hex strings
                    -- termcolors = {} -- table of colour name strings
                },
            }


        end,
    },
    "nvim-treesitter/nvim-treesitter-context",
}
    --use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    --use ('nvim-treesitter/nvim-treesitter-context')
