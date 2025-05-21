return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = false,
      },
      explorer = { enabled = true },
      picker = {

        enabled = true,
        sources = {
          explorer = { hidden = true, ignored = false },
          files = { hidden = true, ignored = false },
        },
      },
    },
  },
}
