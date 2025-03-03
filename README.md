# NeoVim

A nvim config written around lazy load

*made with love by jep*

## The Idea

This config was born after I was frustrated with the neovim starting time: it took a whole half a second to launch. The solution was to fully exploit the [lazy](https://github.com/folke/lazy.nvim) plugin manager and it's async loading function.

The folder is structured:

```
├── init.lua
└── lua
    ├── config
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   ├── options.lua
    │   └── theme.lua
    └── plugins
        └── plugins config...
```

Where:

- `init.lua` handles the import
- `config` contains various configs ordered by what they control
- `plugins` has all the plugins definitions and configs

## Dependencies

**Run `:checkhealth` for any additional info**

Lazy

- git
- luarocks

TreeSitter

- node-js
- tree-sitter-cli
- cc

**A clipboard tool is also needed**

- wl-copy -> wayland

## Usage

### Notation

*same used by the vim config*

- `a` -> press a
- `<leader>` -> press the leader key
- `<leader>a` -> press the leader key then a
- `<C-a>` -> ctrl-a, at the same time

Pls use `hjkl`, this is not VScode

`Up` and `Down` keys have been disabled since they are sent by the terminal when the touchpad is accidentally touched while typing

### Nice to know

**Commands** -> what you want to do

- yank: `y`
- paste: `p`
- change: `c` -> delete and go in insert mode

* delete char under the cursor: `x` -> no select needed
* delete: `d`

- capitalize: `gU`
- make lowercase: `gu`

* find char next: `f<char>` -> no select needed
* find char prev: `F<char>` -> no select needed
* find outher char next: `t<char>` -> no select needed
* find outher char prev: `T<char>` -> no select needed
* next: `;`
* prev: `,`

**Select** -> on what

char

- under the cursor: `l`
- prev: `h`

word -> delimited by spaces or punctuation

- word from cursor to punctuation or space (included): `w`
- word from cursor to last char: `e` -> end
- word from cursor to first char: `b`

bigword -> delimited by spaces

*same as word but capitalized*

line

- from cursor to end: `$`
- from cursor to beginning: `0`
- from cursor to first non blank of the line: `-` or `^`

for current line just repeat the last letter:

- yank line: `yy`
- delete line: `dd`
- change line: `cc`
- capitalize line: `gUU`

others lines:

- current line and previous: `k`
- current line and next: `j`

in and out:

- select whole word under the cursor: `iw`
- select whole word with surrounding spaces under the cursor: `aw`
- select text between quotes (without the quotes): `i'`
- select text between quotes (with the quotes): `a'`

whole file:

- top: `gg`
- bottom: `G`

**Move the cursor**

- page Up: `<C-f>` -> forward

- page Down: `<C-b>` -> back

- goto line: `3G` -> goto line 3

- goto top: `gg`

- goto EOF: `G`

all the inline movement are the same used for the **select section**

- goto next word: `w`
- goto end of line `$`
  etc.

**Cool mechanics**

- repeat last action: `.`
- do action *n* times: `*n*<action>`
- undo: `u`
- redo: `<c-r>`

delete 3 lines: `3dd` -> for more info about dd keep reading

insert

- before cursor: `i`
- after cursor: `a`
- to end of line: `A`
- to beginning of line: `I`
- black line below: `o`
- blank line above: `O`

**visual mode** -> the most precise way of selecting things

- visual select char: `v`
- visual select whole line: `V`
- visual select block: `<C-v>`

* indent selected: `>`
* remove indentation selected: `<`

- insert in multiple lines: `<C-v><select lines><S-i>` then type and exit with `esc`

**Panes**

- select pane mode: `<C-w>` -> then choose a direction using `hjkl`

**Macro** -> run the same list of actions multiple times

- record: `q`
- select buffer: `a` *for example*
- run commands
- stop recording: `q`
- run macro `@a` -> run macro in buffer a

**Search and replace**

- in line first occurrence: `:s/foo/new_foo/`
- in line all occurrence: `:s/foo/new_foo/g`
- all file all occurrence: `:%s/foo/new_foo/`

**Change case**

- low to up: `gU`
- up to low: `gu`
- then select what you want to change
- selected char: `gUl`
- whole word: `gUiw`

**Auto indent**

- indent:`=`
- what:`G` -> till EOF
  so to indent whole file and don't lose the cursor position: `gg=G''`

**Registers** -> vim has multiple keyboard registers

- select register key: `"`

numerical registers are used for yank and delete
`0` is the last register, then `1` and so on

`+` is the system register
yank line to system register: `"+yy`
paste from system register: `"+p` -> although this works `Control-Shift-v` is more convenient

The leader key is `space`

### My Config

all the Keybindings are in normal mode, unless specified

### Base

- exit file without closing the window: `<leader>q`
- esc: `jk` -> insert mode

* format file: `<leader>g`

- comment current line: `<leader>c`
- add comment at the end of the line: `<leader>a`
- comment visual selected block: `<leader>b`

* sort alphanumerically visual selected lines: `<leader>S`

- yank to system keyboard in visual mode: `<leader>y`
- paste from system keyboard in visual mode: `<leader>p`

* move up half screen: `K`
* move down half screen: `J`

### Plugins

**nvim-tree** -> file manager

- toggle open-close: `<leader>e`
- expand folder or go to file: `L` *the file is open in a new tab*
- back: `H`
- toggle hidden files: `gh`

**telescope** -> fuzzy searcher

- search in reccent files: `<leader>r`
- search in selected folders (look in the config) `<leader>ff`
- grep in current dir: `<leader>fg` *uses ripgrep, written in rust:)*

* open file in a new tab: `<enter>`
* open file in split: `<C-x>`
* open file in vsplit: `<C-v>`

**nvim-cmp** -> autocomplete

- select highlighted: `<S-CR>` -> enter key
- next: `<Tab>`
- prev: `<S-Tab>`
- close: `<C-e>`

**vim-surround** -> manages quotes, brackets etc

- add surround: `ys`
- rm surround: `rs`
- replace surround: `cs`

of what:

- inner word (bounded by non letters): `iw`
- inner Word (bounded by spaces): `iW`
- etc. -> more in vim documentation

current line is surrounded with `_`, which current line

what:

- quotes: `'`
- for replace: `'"` -> single with double

to replace single quotes with double of a Word is: `csiW'"`
