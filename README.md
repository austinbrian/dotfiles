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
