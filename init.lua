local config = {
  options = {
    opt = {
      clipboard = "",
      scrolloff = 5,
    },
    g = {
      autoformat_enabled = false,
    },
  },

  mappings = {
    n = {
      -- Disable force quit and force write shortcuts
      ["<C-s>"] = false,
      ["<C-q>"] = false,
      -- Use Alt-h and Alt-l for changing tabs
      ["<S-h>"] = false,
      ["<S-l>"] = false,
      ["<M-h>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer tab" },
      ["<M-l>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer tab" },
    },
    v = {
      -- Add alias motions as suggested by surround.nvim
      ["ir"] = { "i[", desc = "Inside square brackets" },
      ["ar"] = { "a[", desc = "Around square brackets" },
      ["ia"] = { "i<", desc = "Inside angle brackets" },
      ["aa"] = { "a<", desc = "Around angle brackets" },
    },
    o = {
      -- Add alias motions as suggested by surround.nvim
      ["ir"] = { "i[", desc = "Inside square brackets" },
      ["ar"] = { "a[", desc = "Around square brackets" },
      ["ia"] = { "i<", desc = "Inside angle brackets" },
      ["aa"] = { "a<", desc = "Around angle brackets" },
    },
  },

  plugins = {
    init = {
      {
        "kylechui/nvim-surround",
        config = function()
          require("nvim-surround").setup({

          })
        end
      },
      { "stefandtw/quickfix-reflector.vim" },
    },

    ["which-key"] = function(config)
      config.plugins.registers = false
      return config
    end,
  },

  polish = function()
  end,
}

return config
