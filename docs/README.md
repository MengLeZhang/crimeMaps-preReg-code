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


### Meet journal requirements
  - [ ] Please ensure that your manuscript meets PLOS ONE's style requirements, including those for file naming. The PLOS ONE style templates can be found at https://journals.plos.org/plosone/s/file?id=wjVg/PLOSOne_formatting_sample_main_body.pdf and https://journals.plos.org/plosone/s/file?id=ba62/PLOSOne_formatting_sample_title_authors_affiliations.pdf
  - A: Title page formatted as per instruction. Figures and heading formatted as per instruction. We have also added headings

  - [x] Please include your full ethics statement in the ‘Methods’ section of your manuscript file. In your statement, please include the full name of the IRB or ethics committee who approved or waived your study, as well as whether or not you obtained informed written or verbal consent. If consent was waived for your study, please include this information in your statement as well.
  - A: Added and ethics letter is in supplement (S4).

  - [x] Please upload a new copy of Figure 1 as the detail is not clear. Please follow the link for more information: https://blogs.plos.org/plos/2019/06/looking-good-tips-for-creating-your-plos-figures-graphics/
  - A: Done. All figures are converted and checked through PACE

  - [x] We note you have included a table to which you do not refer in the text of your manuscript. Please ensure that you refer to Table 1 in your text; if accepted, production will need this reference to link the reader to the Table.
  - A: Done

  - [x] Please ensure that you refer to Figure 1 and 3 in your text as, if accepted, production will need this reference to link the reader to the figure.
  - A: references added in text

  - [x] Please upload a copy of Figure 7 and 5, to which you refer in your text on page 3 and 14. If the figure is no longer to be included as part of the submission please remove all reference to it within the text.
  - A: Figure 5 amended to figure 3. Figure 7 is a figure in a referenced paper (made clearer in text).

  - [x] Please include captions for your Supporting Information files at the end of your manuscript, and update any in-text citations to match accordingly. Please see our Supporting Information guidelines for more information: http://journals.plos.org/plosone/s/supporting-information.
  A: Done. File names changed and put captions at end of main text.

### Review one comments
  - [x] I find the text a bit repetitive. Try to remove some ideas that are mentioned twice.
  - A: We have cut down the text and avoided repeition of the research design. We have moved the technical details for the Snap point and geomasking to Supplement S3 (now renamed to material related to police-uk). This should greatly cut down repetition of key ideas.
  - [x] Page 16. In general, confounders are not properly defined. This is unclear.
  - A: We define the technical term confounders in the research design; this is common term used through the social sciences and health related research. We have added a section with examples of confounder in the statistical analysis section. We have gone into details in the sensitivity and robustness tests and shown why the location of houses and crimes are the most important confounders in S2. We have also clarified what we mean by observed and unobserved confounders in the sensitivity and robustness section. We do reiterate that anything can be a confounder (unless proven otherwise).

  - [x] Page 16. The definition of "I" and three types of "I" is unclear. How is this used later in the text?
- A : Deleted in main text. This definition is used in the S2.

  - [x] Page 20. The text mentions Figure 5, which is not located in the main text.
    - A: Figure 5 is amended to figure 3.

  - [x] Page 22. "share" should be "shared"
  - A: done

  - [x] Table 1 column headings should be checked (Ln vs. Log)?
- A: Changed to log which is normally interpreted as the natural log (ln)
  - [x] Table 1 should contain currency (the reader assumes this is GBP, right?).
  - A: Done. References to GBP are also made in the text.


  - [ ] The bibliography list is not homgeneous.
  - [x] The authors should mention how to cope with the risk of finding errors in the data, having solid data for such a project is not only related the presence of missing data.
  - A: We have filled this out more extensively. The public domain data has already been error checked. We have noted potential errors in the raw police data (which will be reflected in the public data). Based on talking with the police and their crime mapper -- these issues are unlikely to affect our results. We have reiterated that we have checked that our Snap data is an accurate recreation of the real secret snap data. We recreate the public domain data from 2011-2013 using raw police data to check that we have recreated the police.uk data routine. Section has been renamed data quality instead of missing data to reflect.

  - [ ] The quality of preparation of this manuscript should increase.

### Reviewer two comments:
- [ ] the paper is very flawed in its structure, groundwork such as literature and data referencing and lacks a discussion section completely.
- A: This paper follows the structure of a PLOSone/ OSF protocol template with some exception in the original. Deviations from the standard format occured because we are doing secondary data study using a potential natural experiment rather than conducting an actual experiment with new data collection. The paper now follows the standard PLOSone protocol template even more rigidly. We have amended the referencing. The discussion section was called Other Consideration in original manuscript (now renamed). The discussion in a study protocol is not meant to be a discussion of results (since there are no results).

- [ ] Background. Why is results in supplementary materials. what is the meaning of the data access sentence. what does it mean by serendipitous discovery.
- A: This is a study protocol. S1 shows an example analysis using 1 police force out of 43 to make it clear to the readers a) what we have already done (to test our methods) and b) what the analysis looks like in practise (the statistical analysis section is very abstract and dry). We have moved mention of the serendipitous discovery to the project timelines subsection (in line with PLOSone protocol templates). This ought to clear things up.

- [ ] Previous studies: Reviewer 2 says have studies the effects of crime maps. We just have to show the estimand and the design are not the same.

  - [ ] hypothesis. clarify.
  - [ ] hypothesis: correct reference style for data and webpage.

- [ ] design. what are confounders (common causes).
- A: this is a common term in the social sciences (including economics) and health. We have explained it in the research design and added examples in the statistical analysis section.

- [ ] design. BetaT is used too much. Choose another letter
- A: We've kept the statistical notation. There's a lot of formulas and we've sectioned off our estimators in order to avoid confusion around what BetaT is from one section to another. BetaT is normally a test statistic.

- [x] method. time period.
- A: We've moved the sample subsection to nearer the beginning of the material and methods. We've made the time period as clear as possible. The end period is always the year 2013. The earliest year for RQ2 is unknown (2010 being the latest it can be).

- [ ] appendix refenreces not right???
- A: We've renamed supplements according to PLOSone guidelines.

- [x] collinearity
- A. We need to ask reviewer 2 to specify what is the issue. Collinearity does not bias estimates unless it is particular bad (i.e. near perfect collinearity). This is not the case; we've quoted Tompson et al who demonstrated there is a considerable mismatch between police.uk reported crime and police force recorded crimes. Multiple covariate correlated with the 'exposure' (e.g. geomasking error) will reduces statistical power however as reviewer 2 can see all our estimators either have no covariates or few covariates. We have used South Yorkshire data in supplement S1 to demonstrate power and noted other unknowns around power in the main text.

- [ ] RQ1. clarify to reviewer 2 re: study protocol,
- A. This is a study protocol. Not a result paper.
  - [ ] RQ2. See RQ1
- A. This is a study protocol. Not a result paper.

  - [ ] sensitivity and robustness. see RQ1 and 2
  - A. This is a study protocol. Not a result paper.

  - [ ] data source. what is the different tests for each one?
  - A. We've stated the exact statistical tests in the robustness section in detail. These are all standard univariate and multivariate tests.

  - [ ] Scope, more crime etc.
  - A: A study protocol outlines the main research questions. It does not stop us from doing exploratory results so long as we are clear what is confirmatory hypothesis testing (e.g. what's in the protocol written before results are known) and what are exploratory results. The scope of our main objectives is to cover an area that is academically novel, within the public interest, and based on hypotheses formed from arguments from the Government and private bodies such as estate agents.
