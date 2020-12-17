# Contributing

## Architecture

- `/src/` - Source files for the README.
- `/concat` - Defines the order in which the files are concatenated.

## Example Addition

1. Create `foo-bar.md` in `/src/`

- Filenames follow the kebab casing convention.

2. Content

- First section heading should be level 2. i.e. `## Foo Bar`
- One blank line should be left at the end of the document.

3. Add to Table of Contents at `/src/toc.md`

- Link to heading

4. Add file path to `/concat`
5. Run `npm run build` from the command line
6. Push changes
