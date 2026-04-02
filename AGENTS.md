# AGENTS.md - Neovim Configuration

## Overview

This is a Neovim configuration written in Lua. It uses [mini.deps](https://github.com/echasnovski/mini.deps) for plugin management.

## Project Structure

```
nvim/
├── init.lua              -- Main entry point
├── lua/
│   ├── basic.lua         -- Core Neovim options
│   ├── plugins.lua       -- Plugin definitions
│   ├── autocmds.lua      -- Autocommands
│   ├── keymaps-native.lua -- Native Neovim keymaps
│   ├── keymaps-plugins.lua -- Plugin keymaps
│   ├── mini-deps.lua     -- Deps helper (loads MiniDeps)
│   └── config/           -- Plugin configurations
│       ├── lsp.lua
│       ├── cmp.lua
│       ├── conform.lua
│       ├── treesitter.lua
│       └── ... (other plugins)
├── after/
│   └── ftplugin/         -- Filetype-specific settings
└── misc/                 -- Development files
```

## Commands

### Validating Configuration

- `:checkhealth` - Run Neovim health check
- `:lua vim.loader.enable()` then `:lua require("basic")` - Reload config manually
- `:source %` - Reload current file in Neovim

### Running Neovim

- `nvim` - Start Neovim
- `nvim --headless -c "quitall" +qa` - Test config loads without error

### Linting/Formatting (for Lua config files)

- `:!luacheck .` - Lint Lua files (install via `luarocks install luacheck`)
- `:lua =vim.inspect(vim.fn.stdpath("config"))` - Show config path

### Plugin Management

- `:Lazy` - Open Lazy package manager (if lazy.nvim is used)
- `:MiniDepsSync` - Sync mini.deps plugins (not available at runtime, run from CLI)

## Code Style Guidelines

### Indentation

- **Use 2 spaces** (not tabs). The config sets `vim.opt.tabstop = 2`, `vim.opt.softtabstop = 2`, `vim.opt.shiftwidth = 2`.

### Keymaps

- Use `vim.keymap.set(mode, lhs, rhs, opts)` for all keymaps
- Always use `noremap = true` (use `opts = { noremap = true, silent = true }`)
- Add `desc` to keymaps for Which-Key integration:
  ```lua
  keymap("n", "<Leader>ww", ":w<cr>", vim.tbl_extend("error", opts, { desc = "Save buffer" }))
  ```
- Leader is set to space: `vim.g.mapleader = " "`

### Autocommands

- Use `vim.api.nvim_create_autocmd(events, { ... })` (modern API)
- Use `vim.api.nvim_create_augroup(name, { clear = true })` for grouping
- Example:
  ```lua
  vim.api.nvim_create_autocmd("TextYankPost", {
    command = "silent! lua vim.highlight.on_yank()",
    group = yankGrp,
  })
  ```

### Options/Config

- Use `vim.opt` for options: `vim.opt.cursorline = true`
- Use `vim.o` for old-style options: `vim.o.synmaxcol = 300`
- Use `vim.g` for global variables: `vim.g.loaded_netrwPlugin = 0`
- Use `vim.tbl_extend("error", ...)` to merge option tables:
  ```lua
  vim.tbl_extend("error", opts, { desc = "Description" })
  ```

### Plugin Configuration

- Plugins are defined in `plugins.lua` using `MiniDeps.add()` or `MiniDeps.now()`/`MiniDeps.later()`
- Plugin configs go in `lua/config/` directory
- Config files are named after the plugin (e.g., `config/lsp.lua` for LSP config)
- Use `require("plugin-name").setup({})` or `require("config.plugin-name")` for setup

### Imports/Requires

- Use relative requires: `require("config.lsp")` not `require("nvim.config.lsp")`
- Module naming: lowercase with hyphens for file names (`mini-diff.lua`), snake_case in code

### Error Handling

- No explicit error handling required in config files
- Use `pcall(require, "module")` if a module might not exist
- Silent failures in autocmds: `command = "silent! ..."`

### Commands

- Use `vim.cmd()` or direct command strings: `:w<cr>`
- Use `vim.api.nvim_create_user_command()` for custom commands

### Comments

- Use `--` for comments
- Keep comments concise; avoid obvious explanations
- Use Russian comments where they appear in original code

### Formatting

- No trailing whitespace
- One blank line between logical sections
- Tables on single line if under 80 chars:
  ```lua
  vim.opt.completeopt = { "menuone", "noinsert" }
  ```
- Multi-line tables for longer content:
  ```lua
  vim.lsp.config.texlab = vim.tbl_extend("error", defaultOpts, {
    settings = { texlab = { build = { ... } } },
  })
  ```

### Tables/Arrays

- Use `{ "item1", "item2" }` for arrays
- Use `{ key = "value" }` for dictionaries
- Trailing commas allowed and encouraged

### Strings

- Use double quotes for regular strings
- Use single quotes only when double quotes appear in string

### Functions

- Use `local function name()` for local functions
- Use anonymous functions for callbacks
- Prefer method chaining where applicable

## Testing

- To test changes, restart Neovim or source the modified file: `:source %`
- Check for errors with `:messages` after startup
- Use `:lua vim.print(vim.inspect(...))` for debugging

## Adding New Plugins

1. Add plugin in `lua/plugins.lua` using `add()` or `now()`/`later()`
2. Create config in `lua/config/<plugin-name>.lua`
3. Add keymaps in `lua/keymaps-plugins.lua` if needed
4. Add filetype settings in `after/ftplugin/` if needed

## Dependencies

- mini.deps - Plugin manager
- All plugins are configured in `lua/plugins.lua`
- No external build tools required