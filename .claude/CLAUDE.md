# Neovim Configuration

## Project Overview
This is a personal Neovim configuration written in Lua. The goal is a clean, modern editor setup. I am a complete beginner to both Lua and Neovim configuration.

## My Skill Level
- New to Lua (do not assume I know the language)
- New to Neovim's config system (lazy.nvim, LSP, etc.)
- Familiar with basic programming concepts

---

## How Claude Should Help Me

### Always explain:
- **What** a code change does before writing it
- **Why** it goes in a specific file or location
- **Lua syntax** used in the snippet (e.g. what `{}`, `function`, `vim.opt` mean)
- Any Neovim-specific concepts (e.g. what an LSP is, what a buffer vs window is)

### Code style:
- Prefer **explicit, readable code** over clever one-liners
- Add **inline comments** on non-obvious lines
- Break config into **small focused files** — one plugin or concern per file
- Never silently overwrite existing config; show a diff or ask first

### When I ask for a plugin:
1. Explain what the plugin does in plain English
2. Show the minimal working config (not every option)
3. Tell me where to add it in the file tree
4. Tell me what keymaps it adds or requires

---

## File Structure

```
~/.config/nvim/
├── init.lua              ← entry point, minimal bootstrapping only
├── lua/
│   ├── core/
│   │   ├── options.lua   ← vim.opt settings (line numbers, tabs, etc.)
│   │   ├── keymaps.lua   ← global keymaps not tied to a plugin
│   │   └── autocmds.lua  ← autocommands (e.g. format on save)
│   └── plugins/
│       ├── init.lua      ← lazy.nvim plugin list
│       └── <plugin>.lua  ← one file per plugin or plugin group
```

**Rules:**
- `init.lua` should only bootstrap lazy.nvim and require `lua/core/*`
- Plugin configs live in `lua/plugins/<plugin-name>.lua`
- Do not put keymaps inside `init.lua`

---

## Plugin Manager
Using **lazy.nvim**. Plugins are declared in `lua/plugins/init.lua` using the `return { ... }` table format.

```lua
-- Example plugin entry shape
return {
  "author/plugin-name",
  event = "VeryLazy",       -- when to load it
  dependencies = {},        -- other plugins it needs
  config = function()
    require("plugin-name").setup({
      -- options here
    })
  end,
}
```

---

## Current Plugins
<!-- Keep this list updated as plugins are added -->
- [ ] lazy.nvim (plugin manager)
- [ ] (none yet)

---

## Lua Basics I Want Remembered

- `vim.opt.X = Y` sets a Neovim option
- `vim.keymap.set(mode, lhs, rhs, opts)` sets a keymap
- `require("module")` loads a Lua file from the `lua/` directory
- Tables `{}` are used for both arrays and key-value maps
- `--` is a comment

---

## Neovim Concepts Glossary
<!-- Claude: expand this as new concepts come up -->

| Term | Plain English |
|------|---------------|
| Buffer | An open file loaded into memory |
| Window | A pane displaying a buffer |
| Tab | A layout of windows (not like browser tabs) |
| LSP | Language Server Protocol — provides autocomplete, go-to-def, errors |
| Treesitter | Parses code into a syntax tree for better highlighting |
| Keymap | A keyboard shortcut bound to a command |
| Leader key | A prefix key (usually `<Space>`) used to namespace shortcuts |
| Autocommand | Code that runs automatically on an event (e.g. file open) |

---

## Preferences
- **Leader key:** `<Space>`
- **Colorscheme:** TBD
- **Line numbers:** relative + absolute hybrid
- **Tab width:** 2 spaces, expandtab on
- **Format on save:** yes, when an LSP supports it

---

## What NOT to Do
- Do not add plugins I didn't ask for
- Do not use Vimscript (`.vim` files) — Lua only
- Do not use deprecated Neovim APIs (e.g. `nvim_buf_set_option` — prefer `vim.bo`)
- Do not give me a massive all-in-one config dump; build incrementally
