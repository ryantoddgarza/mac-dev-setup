## Sublime Text

### Set Default Editor in Terminal

Navigate to the home directory and open or create a file called `.bashrc`. Assuming the filepath is correct add the following to the file.

```
export EDITOR="/Applications/Sublime Text.app/Contents/MacOS/Sublime Text"
```

### Sublime Text Packages

#### General Application

- [Package Control](packagecontrol.​io): A full-featured package manager.
- [PackageResourceViewer](github.com): Plugin to assist viewing and editing package resources in Sublime Text 2 and Sublime Text 3.
- [SideBarEnhancements](https://github.com/titoBouzout/SideBarEnhancements): Enhancements to Sublime Text sidebar. Files and folders.
- [Terminus](https://github.com/randy3k/Terminus): Bring a real terminal to Sublime Text.
- [Dictionaries](https://github.com/SublimeText/Dictionaries): Hunspell UTF8 dictionaries.

#### Cleaner Code

- [SublimeLinter](https://github.com/SublimeLinter/SublimeLinter): The code linting framework for Sublime Text 3.
    - [SublimeLinter-html-tidy](https://github.com/SublimeLinter/SublimeLinter-html-tidy): SublimeLinter 3 plugin for html tidy.
- [HTML-CSS-JS Prettify](https://github.com/victorporof/Sublime-HTMLPrettify): HTML, CSS, JavaScript, JSON, React/JSX and Vue code formatter for Sublime Text 2 and 3 via node.js.


#### Language Helpers

- [Markdown Extended](https://github.com/jonschlinkert/sublime-markdown-extended): Markdown syntax highlighter.
- [Monokai Extended](https://github.com/jonschlinkert/sublime-monokai-extended): Extends Monokai from Soda with additional syntax highlighting for Markdown, LESS, HTML, Handlebars and more.
- [Markdown Preview](https://github.com/facelessuser/MarkdownPreview): Markdown preview and build plugin for Sublime Text
- [Autoprefixer](https://github.com/sindresorhus/sublime-autoprefixer): Sublime plugin to prefix your CSS. *See troubleshooting*.
- [Sass](packagecontrol.io): Sass and SCSS syntax for Sublime Text.
- [Java​Script Enhancements](https://github.com/pichillilorenzo/JavaScriptEnhancements): JavaScript Enhancements is a plugin for Sublime Text 3. It offers not only a smart javascript autocomplete but also a lot of features about creating, developing and managing javascript projects (real-time errors, code refactoring, etc.).
    - [TerminalView](https://github.com/Wramberg/TerminalView): Terminal inside Sublime Text 3 view. *This plugin is dead*.
- [jQuery](https://packagecontrol.io/packages/jQuery): Sublime Text package bundle for jQuery.
- [Babel](https://github.com/babel/babel-sublime): Syntax definitions for ES6 JavaScript with React JSX extensions.
- [Babel Snippets](https://github.com/babel/babel-sublime-snippets): Next generation JavaScript and React snippets for Sublime.
- [HTML Boilerplate](https://github.com/sloria/sublime-html5-boilerplate): A Sublime Text 2/3 snippet to generate the HTML5 Boilerplate template.

### Local React Environment

1. Update node [nodejs.org](https://nodejs.org)
2. Install text editor syntax highlighting
    - [Babel](https://github.com/babel/babel-sublime): Syntax definitions for ES6 JavaScript with React JSX extensions.
    - [Babel Snippets](https://github.com/babel/babel-sublime-snippets): Next generation JavaScript and React snippets for Sublime.
3. Install `npm i -g react-static`

Install browser dev tools:

[React Dev Tools](https://reactjs.org/blog/2015/09/02/new-react-developer-tools.htm)

### Troubleshooting

#### Autoprefixer

**"Error: Browserlist: caniuse-lite is outdated."**

Delete:

```
/Library/Application Support/Sublime Text 3/Packages/Autoprefixer/node_modules/.bin
```

Change directory:

```
cd /Library/Application Support/Sublime Text 3/Packages/Autoprefixer/

npm rm autoprefixer

npm install autoprefixer
```

