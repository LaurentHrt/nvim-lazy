# Neovim config (LazyVim)

Personal Neovim configuration built on [LazyVim](https://lazyvim.org) and lazy.nvim.

## Layout
- `init.lua` – only requires `config.lazy`.
- `lua/config/` – `lazy.lua` (bootstrap), `options.lua`, `keymaps.lua`, `autocmds.lua` (loaded by LazyVim).
- `lua/plugins/` – one file per plugin/override; each returns a lazy.nvim spec table.
- `lazyvim.json` – enabled LazyVim extras (managed via `:LazyExtras`).
- `lazy-lock.json` – plugin lockfile; don't edit by hand.

## Conventions
- Format Lua with stylua (`stylua.toml`: 2 spaces, 120 columns). Run `stylua .`.
- Add new plugins or overrides as a new file in `lua/plugins/`, named after the plugin.
- Prefer overriding LazyVim defaults via `opts` over replacing specs.
- Put keymaps in `lua/config/keymaps.lua` (or the plugin's `keys`), options in `options.lua`.
- Keep comments minimal.

## Git
- Make atomic commits: one logical change per commit, with a clear message.
- Never push. Leave pushing to the user.

## Validation
- `nvim --headless "+Lazy! sync" +qa` to install/sync plugins.
- `nvim --headless +qa` should exit without errors.
