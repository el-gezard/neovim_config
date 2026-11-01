require("blink.cmp").setup({
    keymap = {
        preset = "default",
    },
    completion = {
        documentation = { auto_show = false, auto_show_delay_ms = 500 },
    },
    sources = {
        default = { "lsp", "path", "snippets" },
    },
    fuzzy = { implementation = "rust" },
    signature = { enabled = true },
})

