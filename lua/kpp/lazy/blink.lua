return {
  "saghen/blink.cmp",
  version = "*",
  -- Tells lazy to ensure minuet is ready before blink attaches to it
  dependencies = { "milanglacier/minuet-ai.nvim" },
  opts = {
    keymap = {
      preset = "none",
      ["<Tab>"] = { "accept", "fallback" },
      ["<C-space>"] = { "show", "hide" },
    },
    completion = {
      ghost_text = {
        enabled = true,
      },
      menu = {
        auto_show = false, -- Keeps popups hidden so you only see gray text
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer", "minuet" },
      providers = {
        minuet = {
          name = "minuet",
          module = "minuet.blink",
          score_offset = 100,
          async = true,
        },
      },
    },
  },
}
