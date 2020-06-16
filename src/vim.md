## Vim

[Vim](https://www.vim.org/) is a highly configurable text editor built to make creating and changing any kind of text very efficient. It is included as "vi" with most UNIX systems and with Apple macOS.

### Installation

To install the latest version, use Homebrew:

```
brew install vim
```

### Vim config

Clone the approprite .vim files from [github.com/ryantoddgarza/dotfiles](https://github.com/ryantoddgarza/dotfiles) into the home directory.

### The Ultimate vimrc

*This is a temporary recommendation until a solid .vimrc is built up.*

[The Ultimate vimrc](https://github.com/amix/vimrc) is a collection of vimrc configurations to make easy the usage of vim.

To download the The Ultimate vimrc, you need to install the git client. If you need install it, see the [Git section](#git).

Download the vimrc files:

```
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
```

To install the complete version, run:

```
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

To install the basic version, run:

```
sh ~/.vim_runtime/install_basic_vimrc.sh
```

To update the vimrc scripts, run:

```
cd ~/.vim_runtime && git pull --rebase && cd -
```

#### My Configs

After you have installed the setup, you can create `~/.vim_runtime/my_configs.vim` to fill in any extra configurations.

### Color Scheme

Download `monokai.vim` from [github.com/crusoexia/vim-monokai](https://github.com/crusoexia/vim-monokai) and add it to the `~/.vim/colors` directory. If not already in the `.vimrc` file, add `colorscheme monokai`.

More useful color schemes at [github.com/rafi/awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes).

### Plugins

- [vim-airline](https://github.com/vim-airline/vim-airline): Lean & mean status/tabline for vim that's light as air.
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): A collection of themes for vim-airline.
- [Auto Pairs](https://github.com/jiangmiao/auto-pairs): Insert or delete brackets, parens, quotes in pair.
- [commentary.vim](https://github.com/tpope/vim-commentary): Comment stuff out.
- [surround.vim](https://github.com/tpope/vim-surround): Quoting/parenthesizing made simple.
- [vinegar.vim](https://github.com/tpope/vim-vinegar): Combine with netrw to create a delicious salad dressing.
- [Emmet-vim](https://github.com/mattn/emmet-vim): emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
- [Vim-Prettier](https://github.com/prettier/vim-prettier): A vim plugin wrapper for prettier, pre-configured with custom default prettier settings.

