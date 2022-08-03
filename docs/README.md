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

# Steps:
1. Check the issues page on github
2. Pick an issue that you want to work on and write on the page
3. Create a new branch. Name it after the issue. Work on the issue on that branch.
4. Every week on Friday, MZ will merge finished branches together into main.
5. Repeat until all issues are addressed.
6. If you can get stuck on an issue or particular task (i.e. it's something only MZ can do). Let everyone know in the issues page.

When all issues are done, I'll render all the markdown files into word using pandocs/rstudio/rmarkdown. Then it'll get sent to PLOSone.



----

# To do list:

- [ ] Collate a review response/ rebuttal
- [ ] Sanity and proof check the final manuscript (all figures there/ everything works)


- Meet journal requirements
  - [ ] Please ensure that your manuscript meets PLOS ONE's style requirements, including those for file naming. The PLOS ONE style templates can be found at https://journals.plos.org/plosone/s/file?id=wjVg/PLOSOne_formatting_sample_main_body.pdf and https://journals.plos.org/plosone/s/file?id=ba62/PLOSOne_formatting_sample_title_authors_affiliations.pdf

  - [ ] Please include your full ethics statement in the ‘Methods’ section of your manuscript file. In your statement, please include the full name of the IRB or ethics committee who approved or waived your study, as well as whether or not you obtained informed written or verbal consent. If consent was waived for your study, please include this information in your statement as well.

  - [ ] Please upload a new copy of Figure 1 as the detail is not clear. Please follow the link for more information: https://blogs.plos.org/plos/2019/06/looking-good-tips-for-creating-your-plos-figures-graphics/

  - [x] We note you have included a table to which you do not refer in the text of your manuscript. Please ensure that you refer to Table 1 in your text; if accepted, production will need this reference to link the reader to the Table.
  - A: Done

  - [x] Please ensure that you refer to Figure 1 and 3 in your text as, if accepted, production will need this reference to link the reader to the figure.
  - A: references added in text

  - [x] Please upload a copy of Figure 7 and 5, to which you refer in your text on page 3 and 14. If the figure is no longer to be included as part of the submission please remove all reference to it within the text.
  - A: Figure 5 amended to figure 3. Figure 7 is a figure in a referenced paper (made clearer in text).

  - [ ] Please include captions for your Supporting Information files at the end of your manuscript, and update any in-text citations to match accordingly. Please see our Supporting Information guidelines for more information: http://journals.plos.org/plosone/s/supporting-information.

- Review one comments
  - [ ] I find the text a bit repetitive. Try to remove some ideas that are mentioned twice.
  - [ ] Page 16. In general, confounders are not properly defined. This is unclear.
  - [x] Page 16. The definition of "I" and three types of "I" is unclear. How is this used later in the text?
- A : Deleted in main text. This definition is used in the S2.

  - [x] Page 20. The text mentions Figure 5, which is not located in the main text.
    - A: Figure 5 is amended to figure 3.

  - [x] Page 22. "share" should be "shared"
  - A: done

  - [x] Table 1 column headings should be checked (Ln vs. Log)?
- A: Changed to log which is normally interpreted as the natural log (ln)
  - [x] Table 1 should contain currency (the reader assumes this is GBP, right?).
  - A: Done

  - [ ] The bibliography list is not homgeneous.
  - [ ] The authors should mention how to cope with the risk of finding errors in the data, having solid data for such a project is not only related the presence of missing data.
  - [ ] The quality of preparation of this manuscript should increase.

- Reviewer two comments:
  - [ ] the paper is very flawed in its structure, groundwork such as literature and data referencing and lacks a discussion section completely.
  - [ ] Background. Why is results in supplementary materials. what is the meaning of the data access sentence. what does it mean by serendipitous discovery.
  - [ ] Previous studies: Reviewer 2 says have studies the effects of crime maps. We just have to show the estimand and the design are not the same.
  - [ ] hypothesis. clarify.
  - [ ] hypothesis: correct reference style for data and webpage.
  - [ ] design. what are confounders (common causes). -- my reply: this is a common term
  - [ ] design. BetaT is used too much. Choose another letter
  - [ ] method. time period.
  - [ ] appendix refenreces not right???
  - [ ] collinearity: need to ask reviewers to specify what is the issue. collinearity does not bias estimates unless it is particular bad. Clarify the rule of DAGs.
  - [ ] RQ1. clarify to reviewer 2 re: study protocol,
  - [ ] RQ2. See RQ1
  - [ ] sensitivity and robustness. see RQ1 and 2
  - [ ] data source. what is the different tests for each one?
  - [ ] Scope, more crime etc.
