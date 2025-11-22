return {
  -- Find the toggleterm plugin
  {
    "akinsho/toggleterm.nvim",

    -- This 'opts' table is where we add our new config
    opts = {
      -- This table controls the floating window's appearance
      float_opts = {
        -- You can change this to "double", "rounded", or "curvy"
        border = "rounded",

        -- This is the transparency level
        -- 0 is fully opaque, 100 is fully invisible
        -- Try a value between 15 and 30

        -- You can adjust these numbers to fit your screen
        width = 80,  -- Set the width (in columns)
        height = 35, -- Set the height (in rows)
      },
    },

    -- This 'keys' table is what we created in the last step
    keys = {
      {
        "<leader>tt",
        function()
          vim.cmd.write()
          require("toggleterm").toggle(0, nil, vim.fn.expand("%:p:h"), "float")
        end,
        desc = "Toggle terminal in file directory",
      },
    },
  },
}
