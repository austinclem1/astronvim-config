local config = {
  options = {
    opt = {
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
    },
  },

  polish = function()
    -- QuickFix only: 'o' will open the qf location under the cursor, but keep the qf list focused
    -- TODO: Don't open new tab
    local quickfixGroup = vim.api.nvim_create_augroup("QuickFix", { clear = true })
    vim.api.nvim_create_autocmd("FileType", {
      group = quickfixGroup,
      pattern = { "qf" },
      callback = function()
        vim.api.nvim_buf_set_keymap(0, 'n', 'o', '<CR><C-W>p', { noremap = true, silent = true })
      end,
    })

    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}

return config
