local hl = require("hlchunk")

hl.setup({
  indent = {
    chars = { "│", "¦", "┆", "┊", }, -- more code can be found in https://unicodeplus.com/

    style = {
      "#D8DEE9",
      "#88C0D0",
      "#8FBCBB",
      "#5E81AC",
      "#4C566A",

    },
  },
  chunk = {
    enable = true,
    use_treesitter = true,
    style = "#00ffff"

  },
  blank = {
    enable = false,
    chars = { "|" },
    style = {

      "#434C5E",
      "#4C566A",
      "#3B4252",
      "#2E3440",
    },

  }
}
)
