local success, err = pcall(function()
  vim.opt.conceallevel = 1
  require("obsidian").setup({
        workspaces = {
          {
            name = "personal",
            path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Braindump/",
          },
        }
  })
end)

if not success then
    -- Handle the error or just ignore it
    print("Not setting up obsidian plugin on this host")
end


