## CLI Extensions

### Browsersync

[browsersync.io](https://www.browsersync.io/) Synchronized browser testing.

Install and run browser-sync inside of the project folder. Requires `node.js`. Refer to the [Node.js section](#nodejs). Install `browser-sync` globally:

```
npm install -g browser-sync
```

After installing `browser-sync` we can run it inside any folder in our system and it will create a local server (automatically displaying the default index.html file you have in the folder).

```
browser-sync start --server --files .

# abbreviated options are as follows
browser-sync start -sf .
```

### Rsync

Rsync is a fast and extraordinarily versatile file copying tool. It can copy locally, to/from another host over any remote shell, or to/from a remote rsync daemon. It offers a large number of options that control every aspect of its behavior and permit very flexible specification of the set of files to be copied. It is famous for its delta-transfer algorithm, which reduces the amount of data sent over the network by sending only the differences between the source files and the existing files in the destination. Rsync is widely used for backups and mirroring and as an improved copy command for everyday use.

#### Update rsync With Homebrew

Install the latest version via Homebrew:

```
brew install rsync
```

Check version:

```
rsync --version
```

#### Basic Usage

The basic syntax is:

```
rsync <options> <source> <destination>
```

#### Usage - Mirror Directory

```
rsync -acXNv --delete <source> <destination>
```

The options used are:

- `-a`, `--archive` archive mode; equals `-rlptgoD (no -H,-A,-X)`
- `-c`, `--checksum` skip based on checksum, not mod-time & size
- `-X`, `--xattrs` preserve extended attributes
- `-N`, `--crtimes` preserve create times (newness)
- `-v`, `--verbose` increase verbosity

#### Documentation

- [rsync Manual](https://www.manpagez.com/man/1/rsync/)

### SASS

[Sass](https://sass-lang.com/) is a stylesheet language that’s compiled to CSS. It allows you to use variables, nested rules, mixins, functions, and more, all with a fully CSS-compatible syntax. Sass helps keep large stylesheets well-organized and makes it easy to share design within and across projects.

Install with Homebrew:

```
brew install sass/sass/sass
```

### Tree

- [Tree](http://mama.indstate.edu/users/ice/tree/) is a recursive directory listing command that produces a depth indented listing of files.

Install with Homebrew:

```sh
brew install tree
```

