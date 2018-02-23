# Ruby Premailer Example

This is an example project describing how to use the Ruby package Premailer to automatically inline a stylesheet into a simple (single-page) email template.

## The Gist

Write all your markup in the `src/template.html` file, and all your styles in the `src/styles.css` directory.

When ready, run the following in your terminal to automatically create an inlined version (as well as a text-only) version.

```bash
$ ruby inline.rb
```
