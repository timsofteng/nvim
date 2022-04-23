local cmp = require'cmp'
local luasnip = require 'luasnip'
local keymap = vim.api.nvim_set_keymap

local confirm = function(fallback) 
  if cmp.visible() then
    cmp.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    })
  else
    fallback()
  end
end

cmp.setup {
  completion = {
    autocomplete = false,
    completeopt = 'menu,menuone,noinsert'
  },
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body)
    end
  },

  window = {
    completion = { -- rounded border; thin-style scrollbar
      border = 'single',
      winhighlight = 'FloatBorder:Normal,NormalFloat:Normal,CursorLine:Visual,Search:None',
      -- scrollbar = '║',
    },
    documentation = { -- no border; native-style scrollbar
      border = 'single',
      winhighlight = 'FloatBorder:Normal,NormalFloat:Normal,CursorLine:Visual,Search:None',
      -- scrollbar = '',
      -- other options
    },
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = function()
      if cmp.visible() then
        cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
      else
        cmp.complete({
          config = {
            sources = {
              { 
                name = 'buffer',
              }, 
            }
          }
        })
      end
    end,
    ['<C-p>'] = function()
      if cmp.visible() then
        cmp.select_prev_item({behavior = cmp.SelectBehavior.Select})
      else
        cmp.complete({
          config = {
            sources = {
              { name = "nvim_lsp" }
            }
          }
        })
      end
    end,
    ['<C-x><C-s>'] = cmp.mapping.complete({
      config = {
        sources = {
          { name = 'luasnip' }
        }
      }
    }),
    ['<C-x><C-t>'] = cmp.mapping.complete({
      config = {
        sources = {
          { name = 'tmux' }
        }
      }
    }),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-x><C-o>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-l>'] = confirm,
    ['<CR>'] = confirm,

    ['<C-j>'] = cmp.mapping(function(fallback)
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<C-k>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),

  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { 
      name = 'buffer',
      get_bufnrs = function()
        local bufs = {}
        for _, win in ipairs(vim.api.nvim_list_wins()) do
          bufs[vim.api.nvim_win_get_buf(win)] = true
        end
        return vim.tbl_keys(bufs)
      end
    }, 
    { name = 'tmux' }, 
  },
}

cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline({
    ['<C-n>'] = {c = function()
      if cmp.visible() then
        cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
      else
        cmp.complete()
      end
    end},
    ['<C-l>'] = {c = confirm},
    ['<CR>'] = {c = confirm},
  }),
  sources = {
    { name = "buffer" },
  },
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline({
    ['<Tab>'] = {c = function()
      if cmp.visible() then
        cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
      else
        cmp.complete()
      end
    end },
    ['<C-l>'] = {c = confirm},
    ['<CR>'] = {c = confirm},
  }),
  sources = {
    { name = "cmdline" },
  },
})

-- load snippets from runtimepath, eg. friendly-snippets.
require("luasnip.loaders.from_vscode").lazy_load()
