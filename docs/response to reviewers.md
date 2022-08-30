---
output:
  pdf_document: default
  html_document: default
---
# Response to reviewers

We would like to thank the reviewers and editors for their time in providing their comments; many of which were detailed and specific. The majority of these from Reviewer 1 and the journal editorial team were about the preparation of the manuscript. In response, we have made these major changes:

- Changed the document to conform with PLoSone guidelines in line with the editor's suggestions
- Changed section heading to be more in line with PLoSone's guidelines for protocols
- Uploaded figures up to standard of PLOSone using the PACE tool.
- Supplements are now correctly referenced.
- Added Ethics and funding letter to the supporting information (not for peer review). Improved ethic subsection in the methods section in line with PLoSone guidelines.
- Clarification about confounders with examples in the statistical analysis subsection.  We have also clarified what we mean by observed and unobserved confounders (i.e. variables that the research team can observe vs unobserable/ unavailable variables) in the sensitivity and robustness section.
- Added more references to studies on the effects of crime maps on public perception.
- Added a project timeline subsection to clarify the project status and the degree to which we are blind to the results before starting data extraction and analysis.
- Cut down on text repetition by moving the technical details of snap points and geomasking to supplement S3. The main text no longer repeats the core design ideas as much.
- Improved discussion of data errors. We have added in additional information from SYP on the raw police data. Subsection has been renamed data quality instead of missing data to reflect change.
- Fixed numerous minor issues (typos, figure referencing, table heading, referencing tables in the text etc)

We note that reviewer 1 is positive in their review (answering yes to all check items). Reviewer 2 has a completely different opinion. We believe the majority of reviewer 2's comments stem from a misunderstanding: this is a study protocol and not a full report on findings. The definition of a study protocol from PLOSOne:

> Study Protocols describe detailed plans for conducting research, including the background, rationale, objectives, methodology, statistical plan, and organization of a research project. PLOS ONE accepts submissions of Study Protocols for any study type within the journal’s scope.

However, Reviewer two has valid criticisms which we have addressed (see itemised responses). First, we want to address reviewer two criticism of our paper's originality here.

Reviewer two believes the literature work is sparse; truthfully that's because the literature on the impact of crime maps is scarce. However, we have included additional references on related studies looking at public perceptions of crime maps. They also challenged our assertion:  “no other study has studied the effect of crime maps on house prices or leveraged the type of design developed in this study.” Then provides a list of reference.

We have fact-checked this references to check 1) the estimand of these studies (i.e. do they measure crime map effects or something else) and 2) the design of the study (i.e. did they use geomasking errors or other quirks of crime data to separate the effects of Open Data from other crime effects). First, none of them look at the introduction of crime maps on house prices. They all look at relationship between crime in general on house prices. This is not the same topic. Second, they almost all depend on statistical adjustments with no design beyond throwing whatever covariates into a regression model (aside from those using instrumental variables with implausible instruments). We rely on geomasking to provide nearly as good as random variations in crime information available to the public (with interrupted time series taking out any remaining confounding bias). Third, we already cite a systematic review of crime effects on house prices in our submission (Ihanfeldt and Mayock) which also comes to the same conclusion about this literatures (e.g. weak identification strategies).
Our original comments about novelty still stand. The reviewers can check our summaries of each article (under reply to reviewer 2 comments) to make up their own minds.

Regarding our current status. When we submitted the paper in May, we had not yet extracted any data in order to remain blind to the final results. The only exception is public domain data from South Yorkshire which was used to test code, scope statistical power, and demonstrate our estimators. Since we know the early results from one police force (for RQ1 only), we have openly declared this. We have not used public domain data from any of the other 40+ forces for the protocol (but will do so for the study). This is a project with limited resources and time. We have since gained access to raw South Yorkshire Police data (used for RQ2) and are poised to start analysing public domain data (used for RQ1) in this September (see project timeline subsection).

We are happy for PLOSone to publish the history of this submission so that all readers can judge that we have not changed our hypotheses and research questions between initial submission and resubmission (in fact our hypotheses remain the same as those in our study pre-registration on OSF).


---

# List of detailed responses



## Editor comments
- [x] Please ensure that your manuscript meets PLOS ONE's style requirements, including those for file naming. The PLOS ONE style templates can be found at https://journals.plos.org/plosone/s/file?id=wjVg/PLOSOne_formatting_sample_main_body.pdf and https://journals.plos.org/plosone/s/file?id=ba62/PLOSOne_formatting_sample_title_authors_affiliations.pdf
- A: Changed as per requested. Title page formatted as per instruction. Figures and heading formatted as per instruction.

- [x] Please include your full ethics statement in the ‘Methods’ section of your manuscript file. In your statement, please include the full name of the IRB or ethics committee who approved or waived your study, as well as whether or not you obtained informed written or verbal consent. If consent was waived for your study, please include this information in your statement as well.
- A: Added and ethics letter is in supplement (S4).

- [x] Please upload a new copy of Figure 1 as the detail is not clear. Please follow the link for more information: https://blogs.plos.org/plos/2019/06/looking-good-tips-for-creating-your-plos-figures-graphics/
- A: Done. All figures are converted and checked through PACE

- [x] We note you have included a table to which you do not refer in the text of your manuscript. Please ensure that you refer to Table 1 in your text; if accepted, production will need this reference to link the reader to the Table.
- A: Done

- [x] Please ensure that you refer to Figure 1 and 3 in your text as, if accepted, production will need this reference to link the reader to the figure.
- A: references added in text

- [x] Please upload a copy of Figure 7 and 5, to which you refer in your text on page 3 and 14. If the figure is no longer to be included as part of the submission please remove all reference to it within the text.
- A: Original figure 5 reference changed. Figure 7 is a figure in a referenced paper. We took out this reference to a figure and left in a reference to the paper.

  - [x] Please include captions for your Supporting Information files at the end of your manuscript, and update any in-text citations to match accordingly. Please see our Supporting Information guidelines for more information: http://journals.plos.org/plosone/s/supporting-information.
  A: Done. File names changed and put captions at end of main text.

### Review one comments
  - [x] I find the text a bit repetitive. Try to remove some ideas that are mentioned twice.
  - A: We have cut down the text and avoided repetition of the research design. We have moved the technical details for the snap point and geomasking to Supplement S3 (now renamed to material related to police-uk). This should greatly cut down repetition of key ideas.
  - [x] Page 16. In general, confounders are not properly defined. This is unclear.
  - A: We define the technical term confounders in the research design; this is common term used throughout the social sciences and health related research. We have added a section with examples of confounder in the statistical analysis section. We have gone into details in the sensitivity and robustness tests and shown why the location of houses and crimes are the most important confounders in S2. We have also clarified what we mean by observed and unobserved confounders in the sensitivity and robustness section. We do reiterate that anything can be a confounder (unless proven otherwise).

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


- [x] The bibliography list is not homgeneous.
- A: The bibliography list has been amended to Vancouver style as mandated by PLOSone.

- [x] The authors should mention how to cope with the risk of finding errors in the data, having solid data for such a project is not only related to the presence of missing data.
- A: We have filled this out more extensively. The public domain data has already been error checked. We have noted potential errors in the raw police data (which will be reflected in the public data). Based on talking with the police and their crime mapper -- these issues are unlikely to affect our results. We have reiterated that we have checked that our Snap data is an accurate recreation of the real secret snap data. We recreate the public domain data from 2011-2013 using raw police data to check that we have recreated the police.uk data routine. Section has been renamed data quality instead of missing data to reflect.

- [x] The quality of preparation of this manuscript should increase.
- A: Following the advice of the reviewer and the editor, we have amended the manuscript with reference to PLOSone's guidelines.

### Reviewer two comments:
- [x] The manuscript organization is a bit confusing, for instance, sections are unnumbered, data sources appear at the end, the results section is located in the supplementary material and the findings and conclusions/discussions are missed ... the paper is very flawed in its structure, groundwork such as literature and data referencing and lacks a discussion section completely.

- A: This paper follows the structure of a PLOSone/ OSF protocol template. The original paper also did so with some exceptions. Deviations from the standard format occured because we are doing secondary data study using a potential natural experiment rather than conducting an actual experiment with new data collection. The paper now follows the standard PLOSone protocol template even more rigidly. We have amended the referencing. The discussion section was called Other Consideration in original manuscript (now renamed). The discussion in a study protocol is not meant to be a discussion of results (since there are no results yet). PLoSone does not mandate numbered sections. See example here:

  > Plante C, Bandara T, Baugh Littlejohns L, Sandhu N, Pham A, Neudorf C. Surveying the local public health response to COVID-19 in Canada: Study protocol. Plos one. 2021 Nov 18;16(11):e0259590.

- [x] Background. Why is results in supplementary materials. what is the meaning of the data access sentence. what does it mean by serendipitous discovery.
- A: As mentioned earlier, this is a study protocol and not a result paper. However, in S1 we show an example analysis using 1 police force out of 43 to make it clear to the readers a) what we have already done (to test our methods) and b) what the analysis looks like in practise (the statistical analysis section is very abstract and dry). We have moved mention of the serendipitous discovery to the project timelines subsection (in line with PLOSone protocol templates). This ought to clear things up.

- [x] H1 is the hypothesis rejected by the serendipitous Discovery, whereas the authors state that H2 hypothesis has not been tested yet because they do not have extracted the data. If so, RQ2 remains unanswered and the research only has one research question. Please, clarify this.
- A: Please, see the above comment on the category of the current paper. However, we address the confusion relating to the hypothesis in the study timeline. To test our methods for RQ1, we had to trial our method on one police force. Our total sample consists of data from more than 40 forces. Hypothesis 1 has not been rejected but we are not completely blind to the results from one force.

- [x] hypothesis: correct reference style for data and webpage.
- A: Correct referencing

- [x] design. what are confounders (common causes).
- A: this is a common term in the social sciences (including economics) and health. We have explained it in the research design and added examples in the statistical analysis section.

- [x] design. BetaT is used too much. Choose another letter
- A: We've kept the statistical notation. There's a lot of formulas and we've sectioned off our estimators in order to avoid confusion around what BetaT is from one section to another. BetaT is normally a test statistic.

- [x] method. time period.
- A: We've moved the sample subsection to nearer the beginning of the material and methods. We've made the time period as clear as possible. The end period is always the year 2013. The earliest year for RQ2 is unknown (2010 being the latest it can be).

- [x] appendix refenreces not right???
- A: We've renamed supplements according to PLOSone guidelines.

- [x] collinearity
- A. Collinearity does not bias estimates unless it is particular bad (i.e. near perfect collinearity). This is not the case; we've quoted Tompson et al who demonstrated there is a considerable mismatch between police.uk reported crime and police force recorded crimes. Multiple covariate correlated with the 'exposure' (e.g. geomasking error) will reduces statistical power however as reviewer 2 can see all our estimators either have no covariates or few covariates (2 in the case of RQ1). We have used South Yorkshire data in supplement S1 to demonstrate power and noted other unknowns around power in the main text.

- [x] RQ1. clarify to reviewer 2 re: study protocol,
- A. Please, see our earlier comment on the category of the current paper.
- [x] RQ2. See RQ1
- A. Please, see our earlier comment on the category of the current paper.

- [x] sensitivity and robustness. see RQ1 and 2
- A. Please, see our earlier comment on the category of the current paper. We have expanded the section on robustness tests to give exact statistical tests. The worked example in S1 gives an idea of what we want to do.

- [x] data source. what is the different tests for each one?
- A. We've stated the exact statistical tests in the robustness section in detail. These are all standard univariate and multivariate tests.

- [x] Scope, more crime etc.
- A: A study protocol outlines the main research questions. It does not stop us from doing exploratory results so long as we are clear what is confirmatory hypothesis testing (e.g. what's in the protocol written before results are known) and what are exploratory results. The scope of our main objectives is to cover an area that is academically novel, within the public interest, and based on hypotheses formed from arguments from the Government and private bodies such as estate agents.



## Fact-check of papers

For comparison's sake, we start with the estimand and research design of the current study:


__This paper__

Estimand: Effect of introducing public crime maps on house prices (RQ1). We also estimate how house prices are affected when more crimes are shown in an area on a public crime map (RQ2).

Research design: Before and after analysis using interrupted time series. The design uses features of crime map to isolate the effects. These are features (master snap list and extent of geomasking error) are secret and kept from the public. Any remaining confounding is eliminated through the longitudinal design. Robustness tests exist to test the assumption if confounder bias has been eliminated or render negligible. A protocol and pre-registration (i.e. this current submission) is created to reduce opportunities to change the hypotheses, design or statistical analysis after seeing the results. This is unusual for economics.

**Dubin, R. A., & Goodman, A. C. (1982). Valuation of education and crime neighborhood characteristics through Hedonic Housing Prices. Population and Environment, 5, 166–181.**

Estimand: The causal estimand is not clearly stated per se but implicity it is the effect of crime in neighbourhood on house prices. E.g. if a crime occured in neighbourhood what is its average effect on house prices.

Research design: Regression modelling only. No design based exogenous source of variation. Bizzarely uses R squared and sign of coefficients to assess the validity of results.

Note: This is a 1980s paper where the cutting edge for causal inferences in econometrics was weaker so our review is overly harsh. The estimand is not about online crime maps or open data; this paper was published before the internet age!

**Ceccato, V., & Wilhelmsson, M. (2012). Acts of vandalism and fear in neighbourhoods: Do they affect housing prices? In V. Ceccato (Ed.), The urban fabric of crime and fear (pp. 191–215). New York, London: Springer.**

Estimand: Crime (vandalism) on house prices.

Design: Statistical adjustment with no design based source of exogeneity expect for one instrumental variable estimator. Murder is used as an instrument for vandalism; very little rationale is given aside from another paper by Tita et al (2006). 'According to Tita et al.
(2006), murder is an ideal instrument' is their only narrative justification before moving onto statistical tests.

We investigate Tita et al (2006) to check for the rationale behind murder as an instrument to correct measurement error (e.g. underreporting) in violent crimes. The rationale of the paper is not use murder to solve other confounding issues with estimating the effects of

**Ceccato, V., & Wilhelmsson, M. (2018). Does crime impact real estate prices? An assessment of accessibility and location. J. Gerben, N. Bruinsma. & S. D. Johnson, (Eds.), Oxford Handbook on Environmental Criminology (pp. 518–544). Oxford University Press.**

Estimand: Crime on house prices.

Design: We could not access the chapter but it seems like statistically models without a design-based source of exogeneity is used.

**Ceccato, V. & Wilhelmsson, M. (2020) Do crime hot spots affect housing prices? Nordic Journal of Criminology, 21:1, 84-102, DOI: 10.1080/2578983X.2019.1662595**

Estimand: Crime (vandalism hotspots) on house prices

Design: Hedonic modelling with no design based source of exogeneity. Unlike their previous articles, the authors chose not to implement IV estimation (lack of strong and credible instruents).

**Buonanno, P., Montolio, D., & Raya-vílchez, J. M. (2012). Housing prices and crime perception. Empirical Economics, 45, 305–321**

Estimand: Crime perception on house prices. We find this one strange because actual crime is a cause of both crime perceptions and other mediating factors (e.g. property damage) that affect house prices.

Design: Use of instrumental variables with historical levels of victismation and share of youths as instrument for crime perception in the modern day. Other sources of confounding are adjusted for using regression adjustment. Although we are not convinced about the credibility of the instruments, they do dedicate some space to discuss their choice of instruments. Exogeneity of instruments is tested through the Sargan-Hansen's J- test which has flaws (see our summary of Wilhelmsson, M., & Ceccato 2015).

**Lynch, A. K., & Rasmussen, D. W. (2001). Measuring the impact of crime on house prices. Applied Economics, 33, 1981–1989**

Estimand: Crime on house prices.

Design: Hedonic modelling with no design based source of exogeneity.

**Naroff, J. L., Hellman, D., & Skinner, D. (1980). Estimates of the impact of crime on property values. Growth and Change, 11, 24–30.**

Estimand: Effect of crime on house prices.

Design: Unsure. We cannot access the full paper. But the estimator is likely to be a reduced form regression equation like in Dubin and Goodman (1982). In which case the same comment apply re: lack of design based exogeneity.


**Wilhelmsson, M., & Ceccato, V. (2015). Does burglary affect property prices in a nonmetropolitan municipality? Journal of Rural Studies, 39, 210–218.**

Estimand: Crime (in this case burgarly) on house prices.

Design: Statistical adjustment only: hedonic modelling with alternative specifications for spatial autocorrelation and modelling quantiles. One estimator (out of several) has a design based approach:  share of young males in the area and the share of convenience stores are used instruments is used as an instrument for burglary. Barely any rationale is given for the choice of instrument and a Sargan-Hansen's J- test is used to test the instrument validity. This is a weak test that will pass dubious instruments:

> such tests reject instrument validity may often barely exceed small levels, even when instruments are seriously invalid, whereas even minor invalidity of instruments can severely undermine inference on regression coefficients by instrumental variable estimators. These uncomfortable patterns may be aggravated when particular valid or invalid instruments are relatively weak or strong.

From:

> Kiviet, Jan F., and Sebastian Kripfganz. 2021. ‘Instrument Approval by the Sargan Test and Its Consequences for Coefficient Estimation’. Economics Letters 205 (August): 109935. https://doi.org/10.1016/j.econlet.2021.109935.
