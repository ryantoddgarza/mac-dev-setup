## Node.js

Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine.

### Node Version Manager

nvm is a version manager for node.js, designed to be installed per-user, and invoked per-shell.

Install **Node Version Manager** with cURL.

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh | bash
```
Verify installation:

```
command -v nvm
```
which should output ``nvm`` if the installation was successful.

### Listing Versions

To see what versions are installed:

```
nvm ls
```

To see what versions are available to be installed:

```
nvm ls-remote
```
### Install Node.js Version

To download, compile, and install the latest release of node, run:

```
nvm install node # "node" is an alias for the latest version
```

To install a specific version of node:

```
nvm install 12.6.3 # replace with desired version
```

Node has a schedule for long-term support (LTS). Installation supports LTS arguments.

```
nvm install --lts=Erbium
```

### Using Versions

Switching between versions

```
nvm use 12.6.3 # replace with desired version
```

### Set Default Version

```
nvm alias default 12.6.3 # replace with desired version
```

### Troubleshooting

#### Fix the "Missing write access" error when using npm

*Pay attention to the folder listed by the error message. If it’s different, update the chown command accordingly.*

Run this command:

```
sudo chown -R $USER /usr/local/lib/node_modules
```

