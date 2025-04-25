return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup({
        -- File types to enable colorizer
        '*', -- Highlight all files, but you can specify certain types like {"css", "javascript"}
        css = { rgb_fn = true }, -- Enable rgb() and rgba() functions in CSS
        html = { names = true }, -- Enable named colors in HTML
      }, {
        -- Global options
        RGB = true, -- Enable #RRGGBB hex codes
        RRGGBBAA = true, -- Enable #RRGGBBAA hex codes
        names = false, -- Disable all color names
        rgb_fn = true, -- Enable rgb() and rgba() functions
        hsl_fn = true, -- Enable hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBBAA
        css_fn = true, -- Enable all CSS functions: rgb_fn, hsl_fn
      })

      -- Optionally, enable colorizer on specific file types
      vim.cmd [[
        autocmd FileType css,html ColorizerAttachToBuffer
      ]]
    end,
  },
}
