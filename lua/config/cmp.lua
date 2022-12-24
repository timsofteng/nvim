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

local snippetsKey = function() 
  cmp.complete({
    config = {
      sources = {
        { name = "luasnip" }
      }
    }
  })
end

local allBuffersSource  = function()
  local bufs = {}
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    bufs[vim.api.nvim_win_get_buf(win)] = true
  end
  return vim.tbl_keys(bufs)
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
      -- border = 'single',
      -- winhighlight = 'FloatBorder:Normal,NormalFloat:Normal,CursorLine:Visual,Search:None',
    },
    documentation = { -- no border; native-style scrollbar
      -- border = 'single',
      -- winhighlight = 'FloatBorder:Normal,NormalFloat:Normal,CursorLine:Visual,Search:None',
      -- scrollbar = '║',
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
                option = {
                  get_bufnrs = allBuffersSource,
                }
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
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-x><C-o>'] = cmp.mapping.complete(),
    ['<C-c>'] = cmp.mapping.close(),
    ['<C-l>'] = snippetsKey,
    ['<C-e>'] = confirm,
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
      option = {
        get_bufnrs = allBuffersSource,
      }
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
    { 
      name = "buffer",
      option = {
        get_bufnrs = allBuffersSource,
      }
    },
  },
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline({
    ['<Tab>'] = {c = function(fallback)
      if cmp.visible() then
        cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
      -- elseif vim.fn.histget(':', vim.fn.histnr(':') + 1) == '' then
      --   cmp.complete()
      else
        cmp.complete()
      end
    end },
    ['<CR>'] = {c = confirm},
    ['<C-e>'] = {c = confirm},
  }),
  sources = {
    { name = "cmdline" },
  },
})

-- load snippets from runtimepath, eg. friendly-snippets.
require("luasnip.loaders.from_vscode").lazy_load()

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true
