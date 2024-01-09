-- Utilities for creating configurations
local util = require "formatter.util"

require("formatter").setup {
    logging = true,
    log_level = vim.log.levels.WARN,
    -- All formatter configurations are opt-in
    filetype = {
        lua = {
            -- "formatter.filetypes.lua" defines default configurations for the "lua" filetype
            require("formatter.filetypes.lua").stylua,

            -- You can also define your own configuration
            function()

                return {
                    exe = "stylua",
                    args = {
                        "--search-parent-directories",
                        "--stdin-filepath",
                        util.escape_path(util.get_current_buffer_file_path()),
                        "--",
                        "-",
                    },
                    stdin = true,
                }
            end
        },

        php = {
            function()
                return {
                    exe = "pint",
                    args = {
                        util.escape_path(vim.fn.getcwd()),
                        "-v",
                        "--preset",
                        "psr12",
                    },
                    stdin = true,
                }
            end
        },

        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace
        }
    }
}
