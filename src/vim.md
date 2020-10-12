## Vim

[Vim](https://www.vim.org/) is a highly configurable text editor built to make creating and changing any kind of text very efficient. It is included as "vi" with most UNIX systems and with Apple macOS.

### Installation

To install the latest version, use Homebrew:

```sh
brew install vim
```

### Configuration

Even though stock vim is extremely powerful, some configuration may be desired to suit a personal workflow or to make learning more enjoyable to newcomers. Though customizing vim is entirely beyond the scope of this document, vim ships with incredible documentation. Enter `:help options` for help configuring vim's available options for example.

#### Some sensible configs

##### Display

In `.vimrc` add:

```
set number " Display line numbers
set backspace=2 " Backspace behaves like other applications
```

##### Color scheme

Download `monokai.vim` from [github.com/crusoexia/vim-monokai](https://github.com/crusoexia/vim-monokai) and add it to the `~/.vim/colors` directory. Add `colorscheme monokai` to `.vimrc`.

More useful color schemes at [github.com/rafi/awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes).

#### Config from dotfiles

Clone the appropriate *.vim\** files from [github.com/ryantoddgarza/dotfiles](https://github.com/ryantoddgarza/dotfiles) into the home directory.

#### The Ultimate vimrc config

A popular choice if you have no existing configurations.

[The Ultimate vimrc](https://github.com/amix/vimrc) is a collection of vimrc configurations to make easy the usage of vim.

### Plugins

Plugins are packages of Vim config code that can add functionality, mappings, and commands to your Vim as well as add support for new programming languages. My [.gitmodules](https://github.com/ryantoddgarza/dotfiles/blob/master/.gitmodules) are a versioned resource for my installed plugins. Among them are:

- [ale](https://github.com/dense-analysis/ale): Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support.
- [auto-pairs](https://github.com/jiangmiao/auto-pairs): Insert or delete brackets, parens, quotes in pair.
- [emmet-vim](https://github.com/mattn/emmet-vim): emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
- [vim-airline](https://github.com/vim-airline/vim-airline): Lean & mean status/tabline for vim that's light as air.
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): A collection of themes for vim-airline.
- [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.
- [vim-javascript](https://github.com/pangloss/vim-javascript): Vastly improved Javascript indentation and syntax support in Vim.
- [vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty): JSX and TSX syntax pretty highlighting for vim.
- [vim-prettier](https://github.com/prettier/vim-prettier): A vim plugin wrapper for prettier, pre-configured with custom default prettier settings.
- [vim-surround](https://github.com/tpope/vim-surround): Quoting/parenthesizing made simple.
- [vim-repeat](https://github.com/tpope/vim-repeat): Enable repeating supported plugin maps with "."
- [vim-vinegar](https://github.com/tpope/vim-vinegar): Combine with netrw to create a delicious salad dressing.

