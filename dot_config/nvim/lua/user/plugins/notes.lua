return {

  { import = "astrocommunity.note-taking.neorg" },
  {
    "nvim-neorg/neorg",
    opts = {
      ["core.dirman"] = {

        load = {
          workspaces = {
            notes = "~/ZERO/NOTES",
          },
        },
      },
    },
  },
}
