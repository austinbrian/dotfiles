# Vim and Tmux Reference
----
Here is a place to record the shortcuts I keep having to look up 
for tmux and vim.

## TMUX
----
### Starting up
* `tmux new -s sessname`        start new session with name
* `tmux a -t sessname`          attach to existing session
* `tmux ls`                     list out the existing sessions

### Prefix shortcuts
* Default is <Ctrl-b>, but I've remapped to <Ctrl-a>
* This list has values remapped in .tmux.config file, not default
**Window creation**
* `<C-a> c`         create new window
* `<C-a> ,`         name window
* `<C-a> .`         move window
* `<C-a> w`         list windows
* `<C-a> f`         find window
* `<C-a> &`         kill window
* `<C-a> d`         detatch

**: Commands**
* `<C-a> : resize-pane -{} #`
	resize pane {U,D,L,R} by # many columns

**Splitting panes**
* `<C-a> v`         vertical pane split
* `<C-a> s`         horizontal pane split
* `<C-a> x`         kill pane
* `<C-a> q`         show pane numbers
* `<C-a> ⌥  ↓`      move pane down
* `<C-a> ⌥  ↑`      move pane up

**Movement between panes**
* `<C-a> j`         move down a pane
* `<C-a> k`         move up a pane
* `<C-a> h`         move left a pane
* `<C-a> l`         move right a pane

## VIM
----
**Panes & Navigation**
* `:vs`             vertical split
* `:sp`             horizontal split
* `<C-e>`           scroll down
* `<C-y>`           scroll up
* `<C-hjkl>`        move between panes (short for `<C-w>hjkl`)
* `<C-[`            skip between function definitions
* `<C-]`            skips to function definition using ctags if ctags are set
* `<H>`             jump to top of the screen
* `<M>`             jump to middle of the screen
* `<B>`             jump to bottom of screen

**Editing Text**
* `ds`/`cs`         delete/change surrounding characters
* `gcc`             toggle on/off comments on a line
* `gc`              toggle visual sel comments
* `vii`/`vai`       visually select *in* or *around* the cursor's indent
* `, [space]`       strip trailing whitespace
* `,l`              align lines on a string
* `Vp`/`vp`         replaces visual selection with default register *without* yanking selected text (works with any visual selection)
* `>>`              inserts a tab at the beginning of the line
* `<<`              removes a tab from the beginning of the line

**File Finders**
* `,d`              toggle NERDTree
* `,t`              project file filter
* `,b`              restricts files to open buffer
* `,a`              starts project search with silver searcher

**NERDTree**
These are available after toggling NERDTree on with `,d`
* `o`               opens in horizontal split (ENTER works same way)
* `i`               opens in horizontal split
* `s`               opens in vertical split
* `t`               opens in new tab
* `I`               toggle on/off hidden files
* `m`               show the NERDTree menu
* `R`               Refresh the tree, useful if files change
* `?`               Quick help

This is very largely from [maximum-awesome](https://github.com/square/maximum-awesome), built by Square.

## Colours — the "Nord Salmon" theme
----
One palette across `less`, `dlog`, and vim. Install or reinstall with `make theme`.

### What it is
Canonical **Nord**, which is already what iTerm2 renders (its dark palette is a
pure Nord set: bg `#2E3440`, fg `#D8DEE9`, red `#BF616A`, blue `#81A1C1`).
Vim has no colorscheme — it renders the terminal palette — so vim was already
Nord and needed no rebasing.

Two deliberate departures from canonical Nord, applied identically everywhere:

| element | canonical Nord | here |
| --- | --- | --- |
| headings | `#88C0D0` nord8 frost cyan | `#81A1C1` nord9 blue |
| inline code | `#8FBCBB` nord7 | `#BF616A` nord11 salmon |

### Where each surface gets it
| surface | mechanism | file |
| --- | --- | --- |
| `less` (via the `bat` LESSOPEN preprocessor) | `$BAT_THEME` | `config/bat/themes/Nord Salmon.tmTheme` |
| `dlog` / `glow` | `-s "$GLAMOUR_STYLE"` | `config/glow/nord-salmon.json` |
| vim | direct `highlight` in an autocmd group | `vimrc.local` |

Both env vars are exported from `zshrc`.

### Changing a colour
Everything is tracked in this repo; nothing is authored in `~/.config`.

* **bat / less** — edit the `.tmTheme`, then **`bat cache --build`** (or
  `make theme`). Without the rebuild, nothing changes: bat reads a compiled
  cache, not the file. The theme is keyed on three scopes — `markup.heading`,
  `entity.name.section` (this one colours the heading *text*; `markup.heading`
  only covers the `#` markers), and `markup.raw.inline` / `markup.raw.block`.
  The upstream base is [crabique/Nord-plist](https://github.com/crabique/Nord-plist),
  the same source bat vendors for its built-in Nord.
* **glow / dlog** — edit the JSON; no build step. Glamour parses it with
  `encoding/json`, so **an unknown or misspelled key is silently ignored** rather
  than erroring. Verify a change actually landed instead of assuming.
* **vim** — edit the `NordSalmonMarkdown` / `SubtleSpell` groups in `vimrc.local`.

### Verifying
Colour is stripped when output is not a TTY, and forcing it with
`CLICOLOR_FORCE=1` downsamples to ANSI-16, which is misleading. Use a real pty:

```sh
TERM=xterm-256color script -q /dev/null glow -s "$GLAMOUR_STYLE" -w 60 FILE | cat -v
bat --color=always --style=plain --paging=never FILE | cat -v
```

Then grep for the truecolor escapes: `38;2;129;161;193` is `#81A1C1` (headings),
`38;2;191;97;106` is `#BF616A` (code).
