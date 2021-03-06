## Terminal

### iTerm2

[iTerm2](https://www.iterm2.com/) is an open source replacement for Apple's Terminal. It's highly customizable and comes with a lot of useful features.

#### Installation

Install iTerm2 via Homebrew:

```sh
brew install --cask iterm2
```

#### Font

To enable italics rendering, run:

```sh
{ infocmp -1 xterm-256color ; echo "\tsitm=\\E[3m,\n\tritm=\\E[23m,"; } > /tmp/xterm-256color.terminfo
tic /tmp/xterm-256color.terminfo
```

Install preferred font:

```sh
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-meslo-lg
brew install --cask font-source-code-pro
```

Set the font in iTerm2's preferences and change the size to 13pt.

#### Color Theme

_DEPRECATED recommendation_

Download `Tender.itermcolors` from [github.com/tombell/tender-iterm2](https://github.com/tombell/tender-iterm2). Go to _Preferences > Profiles > Colors_ and select _Import..._ from the _Color Presets..._ dropdown. Import the theme and select it from the _Color Presets..._ dropdown.

### Zsh

[Zsh](https://www.zsh.org/) is a UNIX command interpreter (shell) usable as an interactive login shell and as a shell script command processor. Zsh has command line editing, builtin spelling correction, programmable command completion, shell functions (with autoloading), a history mechanism, and a host of other features.

#### Installation

Install zsh via Homebrew:

```sh
brew install zsh
```

#### Configuration

The main configuration file for zsh is _.zshrc_ in the user home folder. Create, modify, or copy from [github.com/ryantoddgarza/dotfiles](https://github.com/ryantoddgarza/dotfiles). Other configuration files may be necessary such as _.zshenv_, _.zprofile_, _.zshlogin_, _.zlogin_, and _.zlogout_.

To apply configuration changes to an existing session, simply re-invoke Zsh by running `zsh`. This will source any of the above mentioned files that exist [in a specified order](http://zsh.sourceforge.net/Doc/Release/Files.html#Files). To source only a specific file, _.zshrc_ for example, run `source ~/.zshrc`.

##### Oh My Zsh

A popular choice if you have no existing configurations.

[Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) is an open source, community-driven framework for managing your zsh configuration. It comes with a bunch of features out of the box and improves your terminal experience.

#### Common issues

##### Insecure directories fix

For the error `zsh compinit: insecure directories, run compaudit for list.`, run:

```sh
compaudit | xargs chmod g-w
```

Details available at [Stephen Weiss' Blog](https://stephencharlesweiss.com/blog/2020-03-28/zsh-compinit-insecure-directories/).

Another suggested solution is:

For the error `Insecure completion-dependent directories detected`, add `ZSH_DISABLE_COMPFIX=true` to the top of your .zshrc file. Reload the file by running `source .zshrc`.

### Tmux

[Tmux](https://github.com/tmux/tmux) is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. tmux may be detached from a screen and continue running in the background, then later reattached.

#### Installation

Install tmux via Homebrew:

```sh
brew install tmux
```

#### Configuration

Copy the .tmux.conf file from [github.com/ryantoddgarza/dotfiles](https://github.com/ryantoddgarza/dotfiles) into the home directory.

