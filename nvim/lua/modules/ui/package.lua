local package = require('core.pack').package
local conf = require('modules.ui.config')

package({ 'sainnhe/edge', config = conf.edge })
package({ 'ray-x/starry.nvim', config = conf.starry })
package({ 'shaunsingh/nord.nvim', config = conf.nord })
package({ 'catppuccin/nvim', config = conf.catppuccin })
package({ 'navarasu/onedark.nvim', config = conf.onedark })

package({ 'glepnir/dashboard-nvim', config = conf.dashboard })

package({
  'glepnir/galaxyline.nvim',
  config = conf.galaxyline,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
})

package({
  'nvim-tree/nvim-tree.lua',
  cmd = 'NvimTreeToggle',
  config = conf.nvim_tree,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
})

package({
    'akinsho/nvim-bufferline.lua',
    config = conf.nvim_bufferline,
    dependencies = { 'nvim-tree/nvim-web-devicons'},
})

local enable_indent_filetype = {
  'lua',
  'sh',
  'rust',
  'json',
  'python',
}

package({
  'lukas-reineke/indent-blankline.nvim',
  ft = enable_indent_filetype,
  config = conf.indent_blankline,
})

package({
  'lewis6991/gitsigns.nvim',
  event = { 'BufRead', 'BufNewFile' },
  config = conf.gitsigns,
})
