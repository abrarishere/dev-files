return{
  "sontungexpt/url-open",
  branch = "mini",
  cmd = "URLOpenUnderCursor",
  event = { "CursorHold", "CursorMoved" },
  main = "url-open",
  opts = {
    open_app = "default",
    open_only_when_cursor_on_url = false,
    highlight_url = {
      all_urls = {
        enabled = true,
        fg = "#19ddff", -- "text" or "#rrggbb"
        bg = nil, -- nil or "#rrggbb"
        underline = true,
      },
      cursor_move = {
        enabled = true,
        fg = "#199eff", -- "text" or "#rrggbb"
        bg = nil, -- nil or "#rrggbb"
        underline = true,
      },
    },
    deep_pattern = false,
    extra_patterns = {},
  },
  keys = {
    { "gx", "<esc>:URLOpenUnderCursor<cr>", desc = "Open URL under cursor" },
  }
}
