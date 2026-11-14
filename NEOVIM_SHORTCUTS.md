# NEOVIM_SHORTCUT.md

Personal Neovim shortcut reference — updated **2026-11-15**.

**Leader key:** `Space` (`vim.g.mapleader = " "`). Custom mappings below reflect our proposed/configured Lua setup; verify them in your actual Neovim configuration. Neovim built-in commands do not require plugins.

## Explorer — Neo-tree

| Shortcut | Action | Notes |
|---|---|---|
| `Space + p + v` | Toggle file explorer | Preferred custom mapping (`<leader>pv`); replaces earlier `Space + e` |
| `j` / `k` | Move selection down / up | While Neo-tree has focus |
| `l` | Open file or expand folder | Custom Neo-tree mapping |
| `h` | Collapse folder | Custom Neo-tree mapping (`close_node`) |
| `Enter` | Open selected file or folder | Neo-tree default |
| `?` | Show Neo-tree help | While explorer is focused |
| `Ctrl + h` | Focus left window (often explorer) | Custom window mapping |
| `Ctrl + l` | Focus right window (often editor) | Custom window mapping |

To enable `h` and `l`, include these settings inside your existing `opts.window` in `lua/plugins/neo-tree.lua` (merge; do not create a second `window` table):

```lua
window = {
    position = "left",
    width = 30,
    mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
    },
},
```

> `Space + p + v` toggles the explorer, not just its focus. If you prefer focus-only behavior, change its Neo-tree command to `Neotree focus` rather than adding a duplicate mapping.

## Telescope

| Shortcut | Action |
|---|---|
| `Space + f + f` | Find project files |
| `Space + f + g` | Search text across the project (live grep) |
| `Space + f + b` | Search open buffers |
| `Space + f + r` | Search recently opened files |
| `Space + f + h` | Search Neovim documentation |

## Harpoon 2

| Shortcut | Action |
|---|---|
| `Space + h + a` | Add current file to Harpoon |
| `Space + h + m` | Open Harpoon quick menu |
| `Space + 1` | Jump to marked file 1 |
| `Space + 2` | Jump to marked file 2 |
| `Space + 3` | Jump to marked file 3 |
| `Space + 4` | Jump to marked file 4 |
| `Space + h + n` | Next marked file |
| `Space + h + p` | Previous marked file |

## Buffers and file tabs

| Shortcut | Action |
|---|---|
| `Shift + l` (`L`) | Next buffer (custom) |
| `Shift + h` (`H`) | Previous buffer (custom) |
| `Space + b + d` | Delete current buffer (custom) |
| `:buffers` | List buffers (built-in) |
| `:bnext` / `:bprevious` | Next / previous buffer (built-in) |
| `Ctrl + ^` | Alternate file (built-in) |

## Windows and splits

| Shortcut | Action |
|---|---|
| `Ctrl + h` | Focus left window (custom) |
| `Ctrl + j` | Focus window below (custom) |
| `Ctrl + k` | Focus window above (custom) |
| `Ctrl + l` | Focus right window (custom) |
| `Space + s + v` | Vertical split (custom) |
| `Space + s + h` | Horizontal split (custom) |
| `Ctrl + w`, then `h/j/k/l` | Focus adjacent window (built-in) |
| `Ctrl + w`, then `v` | Vertical split (built-in) |
| `Ctrl + w`, then `s` | Horizontal split (built-in) |
| `Ctrl + w`, then `q` | Close focused window (built-in) |

## Plugin management — lazy.nvim

| Shortcut | Action |
|---|---|
| `Space + l + s` | Run `:Lazy sync` (custom) |
| `:Lazy` | Open lazy.nvim interface |
| `:Lazy sync` | Install, update, and clean plugins |
| `:Lazy install` | Install missing plugins |
| `:Lazy update` | Update installed plugins |

## Java LSP — JDTLS

| Shortcut | Action |
|---|---|
| `gd` | Go to definition (custom LSP mapping) |
| `gr` | Find references (custom mapping; may overlap native Neovim LSP mappings depending on version) |
| `K` | Show documentation/hover (LSP mapping) |
| `Space + r + n` | Rename symbol |
| `Space + c + a` | Code actions |
| `Space + j + o` | Organize Java imports via JDTLS |

These require JDTLS to be attached to the Java buffer.

## Diagnostics

| Shortcut | Action | Status |
|---|---|---|
| `Space + d + d` | Show diagnostic detail at cursor | Custom |
| `Space + d + l` | Open diagnostics location list | Custom |
| `]d` | Next diagnostic | Optional mapping discussed |
| `[d` | Previous diagnostic | Optional mapping discussed |
| `:Telescope diagnostics` | Search diagnostics | Telescope command |

Automatic diagnostic display does not require a shortcut, but does require an active language server.

## Completion — blink.cmp

| Shortcut | Action |
|---|---|
| `Ctrl + Space` | Open completion menu |
| `Ctrl + n` / `Ctrl + p` | Navigate completion suggestions |
| `Ctrl + y` | Accept selected suggestion |
| `Ctrl + e` | Close completion menu |

These are associated with the configured blink.cmp default preset; behavior may vary by plugin version or context.

## Native Neovim navigation

| Shortcut | Action |
|---|---|
| `h` / `j` / `k` / `l` | Left / down / up / right |
| `5j` / `10k` | Move 5 lines down / 10 lines up |
| `gg` | First line |
| `G` | Last line |
| `150G` or `:150` | Go to line 150 |
| `0` | Start of line |
| `^` | First non-blank character |
| `$` | End of line |
| `w` / `b` / `e` | Next word / previous word / word end |
| `Ctrl + d` / `Ctrl + u` | Down / up half a screen |
| `Ctrl + f` / `Ctrl + b` | Forward / backward a screen |
| `%` | Matching bracket/brace |
| `/text` | Search current file |
| `n` / `N` | Next / previous match |
| `*` / `#` | Search word under cursor forward / backward |
| `Ctrl + o` / `Ctrl + i` | Back / forward in jump list |

## Saving and quitting — native commands

| Shortcut | Action |
|---|---|
| `:w` | Save current file |
| `:wq` | Save and quit |
| `:q` | Quit window |
| `:q!` | Quit without saving |
| `:x` or `ZZ` | Save if modified, then quit |
| `:wa` | Save all writable modified buffers |
| `Space + w` | Optional existing custom save mapping, if retained |
| `Space + q` | Optional existing custom quit mapping, if retained |
| `Esc` | Return to Normal mode; optional custom mapping clears search highlight |

We **did not adopt** the proposed `Space + s` save shortcut; use `:w` to practice native Vim behavior.

## Verify custom mappings

In Neovim, these show which file defines a mapping:

```vim
:verbose nmap <leader>pv
:verbose nmap <leader>ls
:verbose nmap <leader>ff
:verbose nmap <leader>ha
:verbose nmap l
```

For Neo-tree's `l` and `h`, run `:verbose nmap l` while your cursor is inside Neo-tree, because those mappings are buffer-local.

---
*This is the consolidated reference from our setup discussions, not an automatic inspection of your local `~/.config/nvim` directory.*
