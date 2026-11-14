# Neovim Shortcuts

A personal reference for navigating Neovim. **Space** is the leader key (`vim.g.mapleader = " "`). Press the keys in sequence, not simultaneously.

## Explorer

| Shortcut | Action |
|---|---|
| `Space + p + v` | Toggle the file explorer without leaving Neovim |

> **Configuration note:** This is your requested explorer shortcut. If your current Neo-tree configuration still uses `Space + e`, update its `keys` entry to `<leader>pv` as shown below.

```lua
keys = {
    {
        "<leader>pv",
        "<cmd>Neotree toggle<CR>",
        desc = "Toggle file explorer",
    },
},
```

## Telescope

| Shortcut | Action |
|---|---|
| `Space + f + f` | Search project files |
| `Space + f + g` | Search text across files |
| `Space + f + b` | Search open buffers |
| `Space + f + r` | Search recently opened files |
| `Space + f + h` | Search Neovim documentation |

## Tips

- Use `:Telescope find_files` or `:Neotree toggle` to launch the tools directly.
- Use `:map <leader>pv` to inspect the explorer mapping after reloading your configuration.
- Open this file inside Neovim any time with `:edit NEOVIM_SHORTCUTS.md` (when in the same directory).
