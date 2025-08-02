# Neovim Keybindings

This document outlines the custom keybindings for this Neovim configuration, as defined in `lua/core/keymaps.lua`.

### Editing

| Key | Mode | Description |
|---|---|---|
| `J` | Visual | Move selected block down |
| `K` | Visual | Move selected block up |
| `x` | Normal | Delete single character without copying |
| `<leader>p` | Visual | Paste without copying to register |
| `jj` / `ii` | Insert | Exit insert mode |
| `<C-c>` | Insert | Exit insert mode |
| `<C-b>` | Insert | Go to beginning of line |
| `<C-e>` | Insert | Go to end of line |
| `<C-h>` | Insert | Move left |
| `<C-l>` | Insert | Move right |
| `<C-j>` | Insert | Move down |
| `<C-k>` | Insert | Move up |
| `<leader>s` | Normal | Replace word under cursor in buffer |

### Navigation & File Management

| Key | Mode | Description |
|---|---|---|
| `<C-d>` | Normal | Page down and center |
| `<C-u>` | Normal | Page up and center |
| `n` | Normal | Next search result and center |
| `N` | Normal | Previous search result and center |
| `<leader>wq` | Normal | Save and quit |
| `<leader>qq` | Normal | Quit without saving |
| `<leader>ww` | Normal | Save |
| `gx` | Normal | Open URL under cursor |
| `<Tab>` | Normal | Next buffer |
| `<S-Tab>` | Normal | Previous buffer |
| `<leader>d` | Normal | Delete current buffer |
| `<leader>ee` | Normal | Toggle file explorer (Nvim-tree) |
| `<leader>er` | Normal | Focus file explorer (Nvim-tree) |
| `<leader>ef` | Normal | Find file in file explorer (Nvim-tree) |

### Window & Tab Management

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
| `<leader>to` | Normal | Open new tab |
| `<leader>tx` | Normal | Close tab |
| `<leader>tn` | Normal | Next tab |
| `<leader>tp` | Normal | Previous tab |

### Quickfix & Diffs

| Key | Mode | Description |
|---|---|---|
| `<leader>qo` | Normal | Open quickfix list |
| `<leader>qf` | Normal | First quickfix item |
| `<leader>qn` | Normal | Next quickfix item |
| `<leader>qp` | Normal | Previous quickfix item |
| `<leader>ql` | Normal | Last quickfix item |
| `<leader>qc` | Normal | Close quickfix list |
| `<leader>cc` | Normal | Diff put |
| `<leader>cj` | Normal | Diff get (local) |
| `<leader>ck` | Normal | Diff get (remote) |
| `<leader>cn` | Normal | Next diff hunk |
| `<leader>cp` | Normal | Previous diff hunk |

### Telescope

| Key | Mode | Description |
|---|---|---|
| `<leader>fg` | Normal | Live grep |
| `<leader>ff` | Normal | Find files |
| `<leader>fa` | Normal | Find all files (including hidden) |
| `<leader>fw` | Normal | Live grep in word under cursor |
| `<leader>fb` | Normal | Buffers |
| `<leader>fz` | Normal | Fuzzy find in current buffer |
| `<leader>fh` | Normal | Help tags |
| `<leader>fs` | Normal | Fuzzy find in current buffer |
| `<leader>fo` | Normal | LSP document symbols |
| `<leader>fi` | Normal | LSP incoming calls |
| `<leader>fm` | Normal | Treesitter methods |
| `<leader>u` | Normal | Undo history |

### Git & Harpoon

| Key | Mode | Description |
|---|---|---|
| `<leader>gb` | Normal | Toggle Git Blame |
| `<leader>ha` | Normal | Add file to Harpoon |
| `<leader>hh` | Normal | Toggle Harpoon menu |
| `<leader>h1-9`| Normal | Navigate to Harpoon file 1-9 |

### LSP & Debugging

| Key | Mode | Description |
|---|---|---|
| `<leader>gd` | Normal | Go to type definition |
| `gR` | Normal | Show references (Telescope) |
| `<leader>rr` | Normal | Rename |
| `<leader>ga` | Normal | Code action |
| `<leader>gl` | Normal | Show line diagnostics |
| `<leader>gp` | Normal | Previous diagnostic |
| `<leader>gn` | Normal | Next diagnostic |
| `<leader>tr` | Normal | Document symbols |
| `<leader>gf` | Normal/Visual | Format code |
| `<C-Space>` | Insert | Completion |
| `<leader>bb` | Normal | Toggle breakpoint |
| `<leader>bc` | Normal | Set conditional breakpoint |
| `<leader>bl` | Normal | Set log point |
| `<leader>br` | Normal | Clear all breakpoints |
| `<leader>ba` | Normal | List breakpoints (Telescope) |
| `<leader>dc` | Normal | Continue (Debug) |
| `<leader>dj` | Normal | Step over (Debug) |
| `<leader>dk` | Normal | Step into (Debug) |
| `<leader>do` | Normal | Step out (Debug) |
| `<leader>dd` | Normal | Disconnect (Debug) |
| `<leader>dt` | Normal | Terminate (Debug) |
| `<leader>dr` | Normal | Toggle REPL (Debug) |
| `<leader>dl` | Normal | Run last (Debug) |
| `<leader>di` | Normal | Hover (Debug) |
| `<leader>d?` | Normal | Scopes (Debug) |
| `<leader>df` | Normal | Frames (Telescope Debug) |
| `<leader>dh` | Normal | Commands (Telescope Debug) |
| `<leader>de` | Normal | Diagnostics (Telescope Debug) |

### Go

| Key | Mode | Description |
|---|---|---|
| `<leader>gsj` | Normal | Add `json` struct tag |
| `<leader>gsy` | Normal | Add `yaml` struct tag |

### Help

| Key | Mode | Description |
|---|---|---|
| `?` | Normal | Toggle keybindings help window |