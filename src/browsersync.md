## Browsersync

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

