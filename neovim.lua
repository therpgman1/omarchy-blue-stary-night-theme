return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#030614",
                bg_dark = "#030614",
                bg_highlight = "#5060ad",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#def9fd",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#5060ad",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#b67281",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#d7adb6",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#5fe8fa",
                -- green: Comments, strings, success states, git additions
                green = "#3aebfd",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#2adef4",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#9096c6",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#baa6bf",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#e4dbe6",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
