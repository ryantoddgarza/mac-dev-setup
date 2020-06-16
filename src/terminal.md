## Terminal

### iTerm2

[iTerm2](https://www.iterm2.com/) is an open source replacement for Apple's Terminal. It's highly customizable and comes with a lot of useful features.

#### Installation

Use Homebrew to download and install:

```
brew cask install iterm2
```

#### Fonts

To enable italics rendering, run:

```
{ infocmp -1 xterm-256color ; echo "\tsitm=\\E[3m,\n\tritm=\\E[23m,"; } > /tmp/xterm-256color.terminfo
tic /tmp/xterm-256color.terminfo
```

Install preferred font:

```
brew tap homebrew/cask-fonts && brew cask install font-fira-code
brew tap homebrew/cask-fonts && brew cask install font-meslo-lg
brew tap homebrew/cask-fonts && brew cask install font-source-code-pro
```

Set the font in iTerm2's preferences and change the size to 13pt.

#### Color Theme

Download `Tender.itermcolors` from [github.com/tombell/tender-iterm2](https://github.com/tombell/tender-iterm2). Go to *Preferences > Profiles > Colors* and select *Import...* from the *Color Presets...* dropdown. Import the theme and select it from the *Color Presets...* dropdown.

### Zsh

The Z shell (also known as zsh) is a Unix shell that is built on top of bash (the default shell for macOS) with additional features. It's recommended to use zsh over bash. It's also highly recommended to install a framework with zsh as it makes dealing with configuration, plugins and themes a lot nicer.

Install zsh using Homebrew:

```
brew install zsh
```

The configuration file for zsh is called .zshrc and lives in your home folder (~/.zshrc).

### Oh My Zsh

*This is a temporary recommendation until a solid .zshrc is built up.*

[Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) is an open source, community-driven framework for managing your zsh configuration. It comes with a bunch of features out of the box and improves your terminal experience.

Install Oh My Zsh:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

To apply any configuration changes you make you need to either start new shell instance or run:

```
source ~/.zshrc
```

#### Insecure directories fix

*TODO: Confirm that the second resolution prevents the need for the first fix.*

1. For the error `Insecure completion-dependent directories detected`, add `ZSH_DISABLE_COMPFIX=true` to the top of your .zshrc file. Reload the file by running `source .zshrc`.
2. For the error `zsh compinit: insecure directories, run compaudit for list.`, run:

```
compaudit | xargs chmod g-w
```

Details available at [Stephen Weiss' Blog](https://stephencharlesweiss.com/blog/2020-03-28/zsh-compinit-insecure-directories/).

### Tmux

[Tmux](https://github.com/tmux/tmux/wiki) is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. tmux may be detached from a screen and continue running in the background, then later reattached.

#### Installation

Install tmux via Homebrew:

```
brew install tmux
```

#### Tmux config

Clone the .tmux.conf file from [github.com/ryantoddgarza/dotfiles](https://github.com/ryantoddgarza/dotfiles) into the home directory.

