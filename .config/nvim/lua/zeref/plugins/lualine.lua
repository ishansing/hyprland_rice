return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local C = {
      rosewater = "#f5e0dc",
      flamingo = "#f2cdcd",
      pink = "#f5c2e7",
      mauve = "#cba6f7",
      red = "#f38ba8",
      maroon = "#eba0ac",
      peach = "#fab387",
      yellow = "#f9e2af",
      green = "#a6e3a1",
      teal = "#94e2d5",
      sky = "#89dceb",
      sapphire = "#74c7ec",
      blue = "#89b4fa",
      lavender = "#b4befe",
      text = "#cdd6f4",
      subtext1 = "#bac2de",
      subtext0 = "#a6adc8",
      overlay2 = "#9399b2",
      overlay1 = "#7f849c",
      overlay0 = "#6c7086",
      surface2 = "#585b70",
      surface1 = "#45475a",
      surface0 = "#313244",
      base = "#1e1e2e",
      mantle = "#181825",
      crust = "#11111b",
    }

    local my_lualine_theme = {

      normal = {
        a = { bg = C.blue, fg = C.mantle, gui = "bold" },
        b = { bg = C.surface0, fg = C.blue },
        c = { bg = C.mantle, fg = C.text },
      },

      insert = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.green },
      },

      terminal = {
        a = { bg = C.green, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.green },
      },

      command = {
        a = { bg = C.peach, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.peach },
      },

      visual = {
        a = { bg = C.mauve, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.mauve },
      },

      replace = {
        a = { bg = C.red, fg = C.base, gui = "bold" },
        b = { bg = C.surface0, fg = C.red },
      },

      inactive = {
        a = { bg = C.mantle, fg = C.blue },
        b = { bg = C.mantle, fg = C.surface1, gui = "bold" },
        c = { bg = C.mantle, fg = C.overlay0 },
      },
    }
    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
