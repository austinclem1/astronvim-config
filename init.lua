local config = {
  options = {
    opt = {
      scrolloff = 5,
    },
  },

  mappings = {
    n = {
      ["<S-h>"] = false,
      ["<S-l>"] = false,
      ["<M-h>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer tab" },
      ["<M-l>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer tab" },
    },
    v = {
      ["ir"] = { "i[", desc = "Inside square brackets" },
      ["ar"] = { "a[", desc = "Around square brackets" },
      ["ia"] = { "i<", desc = "Inside angle brackets" },
      ["aa"] = { "a<", desc = "Around angle brackets" },
    },
    o = {
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
    },
  },
}

return config
