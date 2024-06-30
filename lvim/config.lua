-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.transparent_window = true
lvim.plugins = {
  { "christoomey/vim-tmux-navigator" },
  { "AckslD/swenv.nvim" },
  { "stevearc/dressing.nvim" },
}

lvim.builtin.which_key.mappings["l"]["c"] = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Python Env" }
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
lvim.format_on_save.enabled = true
vim.opt.wrap = true

local HEIGHT_RATIO = 0.8
local WIDTH_RATIO = 0.6

lvim.builtin.nvimtree.setup.actions.open_file.window_picker.enable = false
lvim.builtin.nvimtree.setup.view = {
  adaptive_size = true,
  relativenumber = true,
  float = {
    enable = true,
    open_win_config = function()
      local screen_w = vim.opt.columns:get()
      local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
      local window_w = screen_w * WIDTH_RATIO
      local window_h = screen_h * HEIGHT_RATIO
      local window_w_int = math.floor(window_w)
      local window_h_int = math.floor(window_h)
      local center_x = (screen_w - window_w) / 2
      local center_y = ((vim.opt.lines:get() - window_h) / 2)
          - vim.opt.cmdheight:get()
      return {
        border = "rounded",
        relative = "editor",
        row = center_y,
        col = center_x,
        width = window_w_int,
        height = window_h_int,
      }
    end,
  },
  width = function()
    return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
  end,
}
lvim.builtin.nvimtree.setup.renderer.icons.glyphs.folder = {
  arrow_open = "-",
  arrow_closed = '+'
}
lvim.builtin.lualine.options.section_separators = { left = "", right = "" }
