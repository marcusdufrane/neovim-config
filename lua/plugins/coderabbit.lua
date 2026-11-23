return {
  "marcusdufrane/coderabbit.nvim",
  branch = "bug/remove-bad-flag",
  opts = {},
  keys = {
    {
      "<leader>r",
      desc = "CodeRabbit",
    },
    {
      "<leader>rr",
      "<cmd>CodeRabbitReview<CR>",
      desc = "CodeRabbit Review",
    },
    {
      "<leader>rc",
      "<cmd>CodeRabbitReview committed<CR>",
      desc = "CodeRabbit Review Committed Files",
    },
    {
      "<leader>ra",
      "<cmd>CodeRabbitQuickfix<CR>",
      desc = "CodeRabbit Apply Suggested Fix",
    },
    {
      "<leader>rs",
      "<cmd>CodeRabbitShow<CR>",
      desc = "CodeRabbit Show Results",
    },
    {
      "<leader>rq",
      "<cmd>CodeRabbitStop<CR>",
      desc = "CodeRabbit Stop Review",
    },
    {
      "<leader>rh",
      "<cmd>CodeRabbitHistory<CR>",
      desc = "CodeRabbit Show History",
    },
  },
}
