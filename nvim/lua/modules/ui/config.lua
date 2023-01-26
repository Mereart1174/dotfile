local config = {}

function config.starry()
  -- require('starry.functions').change_style("dracula")
  -- vim.cmd('colorscheme starry')
end

function config.catppuccin()
  require("catppuccin").setup({
      transparent_background = true,
  })
  vim.cmd('colo catppuccin')
end

function config.nord()
  -- vim.cmd('colo nord')
end

function config.onedark()
  require('onedark').setup({
    transparent = true,
  })
  -- vim.cmd('colo onedark')
end


function config.edge()
  -- vim.g.edge_style = "aura"
  -- vim.g.edge_enable_italic = 1
  -- vim.g.edge_disable_italic_comment = 1
  -- vim.g.edge_show_eob = 1
  -- vim.g.edge_better_performance = 1
  -- vim.g.edge_transparent_background = 1
  -- vim.cmd('colorscheme aura')
end

function config.dashboard()
  local db = require('dashboard')
  db.custom_center = {
    {
      icon = '  ',
      desc = 'Update Plugins                          ',
      shortcut = 'SPC p u',
      action = 'Lazy update',
    },
    {
      icon = '  ',
      desc = 'Find File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f',
    },
  }
end

function config.galaxyline()
  require('modules.ui.eviline')
end

function config.nvim_bufferline()
  require('bufferline').setup({
    options = {
      modified_icon = '✥',
      buffer_close_icon = '',
      always_show_bufferline = false,
    },
  })
end

function config.nvim_tree()
  require('nvim-tree').setup({
    disable_netrw = false,
    hijack_cursor = true,
    hijack_netrw = true,
  })
end

function config.indent_blankline()
  require('indent_blankline').setup({
    char = '│',
    use_treesitter_scope = true,
    show_first_indent_level = true,
    show_current_context = false,
    show_current_context_start = false,
    show_current_context_start_on_current_line = false,
    filetype_exclude = {
      'dashboard',
      'DogicPrompt',
      'log',
      'fugitive',
      'gitcommit',
      'packer',
      'markdown',
      'json',
      'txt',
      'vista',
      'help',
      'todoist',
      'git',
      'TelescopePrompt',
      'undotree',
    },
    buftype_exclude = { 'terminal', 'nofile', 'prompt' },
    context_patterns = {
      'class',
      'function',
      'method',
      'block',
      'list_literal',
      'selector',
      '^if',
      '^table',
      'if_statement',
      'while',
      'for',
    },
  })
end

return config
