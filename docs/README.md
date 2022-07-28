# README on journal submission

We need to address the journal comment


# How to work with markdown:

Ideally you want to use a text editor that comes with feature to preview markdown and checks for errors. I use [Atom](https://atom.io/) which is seriously excellent and lightweight.

You can download additional packages for Atom to make it more useable. I recommend:

- Markdown Preview Enhanced. Aside from a nice live preview (press ctrl+shift+m). It includes support for maths symbols.
- markdown-img-paste. Normally with markdown you need to insert a link to a figure you want to render. This means you have to save the image and specify its filepath. This package allows you to 'copy and paste' images by automating all of this. Your pasted content will be in the /assets folder.

Remember this about markdown:
- all filepaths are relative. Take this README which is written in markdown. If I want link to 'appendix.md' it will look for a filed names this in the same folder as this README.
- unfortunately my experience with reference managers in markdown is a faff. Any references just pop it in with a note (e.g. @reference) and I'll go chase it up.
- I'll be rendering the markdown doc with rstudio (which calls up pandocs) into word. I'll take care of this.  
