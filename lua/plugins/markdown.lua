return {
  -- Find the markdown-preview plugin
  {
    "iamcco/markdown-preview.nvim",

    -- Add our new keymaps to its list of keys
    keys = {
      {
        "<leader>mp", -- This will be <Space>mp
        "<cmd>MarkdownPreview<cr>",
        desc = "Markdown Preview",
      },
      {
        "<leader>ms", -- This will be <Space>ms
        "<cmd>MarkdownPreviewStop<cr>",
        desc = "Markdown Stop Preview",
      },
    },
  },
}
