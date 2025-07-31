# Neovim Keybindings

This document outlines the custom and default keybindings for this Neovim configuration.

## Custom Keybindings

These keybindings are defined in `lua/core/keymaps.lua`.

### General

| Key | Mode | Description |
|---|---|---|
| `<leader>wq` | Normal | Save and quit |
| `<leader>qq` | Normal | Quit without saving |
| `<leader>ww` | Normal | Save |
| `gx` | Normal | Open URL under cursor |
| `x` | Normal | Delete single character without copying |
| `J` | Visual | Move selected block down |
| `K` | Visual | Move selected block up |
| `<leader>p` | Visual | Paste without copying to register |
| `jj` / `ii` | Insert | Exit insert mode |
| `<C-c>` | Insert | Exit insert mode |
| `<C-b>` | Insert | Go to beginning of line |
| `<C-e>` | Insert | Go to end of line |
| `<C-h>` | Insert | Move left |
| `<C-l>` | Insert | Move right |
| `<C-j>` | Insert | Move down |
| `<C-k>` | Insert | Move up |

### Navigation

| Key | Mode | Description |
|---|---|---|
| `<C-d>` | Normal | Page down and center |
| `<C-u>` | Normal | Page up and center |
| `n` | Normal | Next search result and center |
| `N` | Normal | Previous search result and center |
| `<Tab>` | Normal | Next buffer |
| `<S-Tab>` | Normal | Previous buffer |
| `<leader>d` | Normal | Delete current buffer |

### Window Management

| Key | Mode | Description |
|---|---|---|
| `<leader>sv` | Normal | Split window vertically |
| `<leader>sh` | Normal | Split window horizontally |
| `<leader>se` | Normal | Make split windows equal width |
| `<leader>sx` | Normal | Close split window |
| `<leader>sj` | Normal | Decrease split window height |
| `<leader>sk` | Normal | Increase split window height |
| `<leader>sl` | Normal | Increase split window width |
| `<leader>sh` | Normal | Decrease split window width |

### Tab Management

| Key | Mode | Description |
|---|---|---|
| `<leader>to` | Normal | Open new tab |
| `<leader>tx` | Normal | Close tab |
| `<leader>tn` | Normal | Next tab |
| `<leader>tp` | Normal | Previous tab |

### Quickfix List

| Key | Mode | Description |
|---|---|---|
| `<leader>qo` | Normal | Open quickfix list |
| `<leader>qf` | Normal | First quickfix item |
| `<leader>qn` | Normal | Next quickfix item |
| `<leader>qp` | Normal | Previous quickfix item |
| `<leader>ql` | Normal | Last quickfix item |
| `<leader>qc` | Normal | Close quickfix list |

### LSP (Language Server Protocol)

| Key | Mode | Description |
|---|---|---|
| `<leader>gd` | Normal | Go to type definition |
| `gR` | Normal | Show references (via Telescope) |
| `<leader>rr` | Normal | Rename |
| `<leader>ga` | Normal | Code action |
| `<leader>gl` | Normal | Show line diagnostics |
| `<leader>gp` | Normal | Previous diagnostic |
| `<leader>gn` | Normal | Next diagnostic |
| `<leader>tr` | Normal | Document symbols |
| `<leader>gf` | Normal/Visual | Format code |
| `<C-Space>` | Insert | Completion |

### Debugging (nvim-dap)

| Key | Mode | Description |
|---|---|---|
| `<leader>bb` | Normal | Toggle breakpoint |
| `<leader>bc` | Normal | Set conditional breakpoint |
| `<leader>bl` | Normal | Set log point |
| `<leader>br` | Normal | Clear all breakpoints |
| `<leader>ba` | Normal | List breakpoints (Telescope) |
| `<leader>dc` | Normal | Continue |
| `<leader>dj` | Normal | Step over |
| `<leader>dk` | Normal | Step into |
| `<leader>do` | Normal | Step out |
| `<leader>dd` | Normal | Disconnect |
| `<leader>dt` | Normal | Terminate |
| `<leader>dr` | Normal | Toggle REPL |
| `<leader>dl` | Normal | Run last |
| `<leader>di` | Normal | Hover (widgets) |
| `<leader>d?` | Normal | Scopes (widgets) |
| `<leader>df` | Normal | Frames (Telescope) |
| `<leader>dh` | Normal | Commands (Telescope) |
| `<leader>de` | Normal | Diagnostics (Telescope) |

### Go

| Key | Mode | Description |
|---|---|---|
| `<leader>gsj` | Normal | Add `json` struct tag |
| `<leader>gsy` | Normal | Add `yaml` struct tag |

### Other

| Key | Mode | Description |
|---|---|---|
| `<leader>s` | Normal | Replace word under cursor in buffer |

---

## Plugin Default Keybindings

### Nvim-Tree

| Key | Action |
|---|---|
| `<CR>`, `o`, `l` | Open file or directory |
| `h` | Close current node |
| `v` | Open in vertical split |
| `R` | Refresh |
| `H` | Show/hide hidden files |
| `E` | Expand all |
| `W` | Collapse all |
| `-` | Go up one directory |
| `s` | Open with system default application |
| `f` | Find file |
| `F` | Close find |
| `Ctrl + k` | Show file information |
| `q` | Close file explorer |
| `g?` | Show help |

### Telescope

| Key | Mode | Action |
|---|---|---|
| `<C-n>`/`<Down>` | Insert | Next item |
| `<C-p>`/`<Up>` | Insert | Previous item |
| `j`/`k` | Normal | Next/previous item |
| `<CR>` | All | Confirm selection |
| `<C-x>` | All | Go to file in a split |
| `<C-v>` | All | Go to file in a vsplit |
| `<C-t>` | All | Go to a file in a new tab |
| `<C-c>` | Insert | Close telescope |
| `<Esc>` | Normal | Close telescope |
| `<C-q>` | All | Send all items to quickfixlist |
| `<M-q>` | All | Send selected items to quickfixlist |
| `?` | Normal | Show mappings for picker actions |

### mini.comment

This plugin has no default keybindings. The following are custom mappings:

| Key | Mode | Action |
|---|---|---|
| `gc` | Normal/Visual | Toggle comment |

### mini.surround

| Key | Mode | Action |
|---|---|---|
| `gsa` | Normal/Visual | Add surrounding |
| `gsd` | Normal | Delete surrounding |
| `gsr` | Normal | Replace surrounding |
| `gsf` | Normal | Find surrounding (right) |
| `gsF` | Normal | Find surrounding (left) |
| `gsh` | Normal | Highlight surrounding |

### quickfixdd

| Key | Mode | Action |
|---|---|---|
| `dd` | Normal (in quickfix) | Delete item from list |

### nvim-dap-ui

| Key | Element | Action |
|---|---|---|
| `e` | Scopes, Watches | Edit value |
| `<CR>` | Scopes, Watches | Expand/collapse |
| `o` | Stacks, Breakpoints | Go to location |
| `d` | Watches | Remove watch |
| `t` | Breakpoints | Toggle breakpoint |
| `r` | Scopes, Watches | Send to REPL |
| `q`, `<Esc>` | Floating | Close |
