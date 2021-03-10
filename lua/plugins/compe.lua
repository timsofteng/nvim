local compe = require'compe'

compe.setup {
  enabled = true;
  autocomplete = true;
  min_length = 2;
  preselect = 'disable';
  -- documentation = false;

  source = {
    buffer = true;
    nvim_lsp = true;
    vim_lsc = true;
    vsnip = true;
    treesitter = true;
  }
}
