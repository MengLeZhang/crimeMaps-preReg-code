# Reply to reviewer (original comments: 26 July 2022)


We would like to take the reviewers and editors for their time in providing their comments; many of which were detailed and specific. The majority of these from Reviewer 1 and the journal editorial team were about the preparation of the manuscript. We apologise for proofing and formatting issues; we've worked hard to resolve all of them.

We believe the majority of reviewer 2's comments stem from a misunderstanding: this is a study protocol and not a full report on findings. The definition of a study protocol from PLOSone:

> Study Protocols describe detailed plans for conducting research, including the background, rationale, objectives, methodology, statistical plan, and organization of a research project. PLOS ONE accepts submissions of Study Protocols for any study type within the journal’s scope.

We have been clear that this is a protocol: the word protocol is mentioned around 8 times throughout the text (including the title). Most of reviewer two's comments, such as lack of results and discussion, are outside the scope of a protocol and are not relevant. It is not the purpose of a protocol to provide a systematic review of a topic but we have diligently fact checked every reference provided by reviewer 2 along with additional ones. Our original comments about novelty still stand. We thank reviewer 2 for their examination of the text for other errors and have corrected everything.

When we submitted the paper in May, we had not yet extracted any data in order to remain blind to the final results. The only exception is public domain data from South Yorkshire which was used to test code, scope statistical power, and demonstrate our estimators. Since we know the early results from one police force (for RQ1 only), we have openly declared this. We have not used public domain data from any of the other 40+ forces for the protocol (but will do so for the study).

This is a project with limited resources and time. We have since gained access to raw South Yorkshire Police data (used for RQ2) and are poised to start analysing public domain data (used for RQ1):

We are happy for PLOSone to publish the history of this submission so that all readers can judge that we have not changed our hypotheses and research questions between initial submission and resubmission (in fact our hypotheses remain the same as those in our study pre-registration on OSF).

We feel that the study protocol is comprehensive; so much so that reviewer two believes it is a full study report. Reviewer one has minimum requests for additional information (apologies on our part for proofing errors) and notes that it's clear to the point of repetition (again apologies).

----

**Fact check**

Reviewer two believes the literature work is scarce; truthfully that's because the literature on the impact of crime maps is scarce. They challenge our assertiation:  “no other study has studied the effect of crime maps on house prices or leveraged the type of design developed in this study.” Then provides a list of reference.

We have fact-checked this references to check 1) the estimand of these studies (i.e. do they measure crime map effects or something else) and 2) the design of the study (i.e. did they use geomasking errors or other quirks of crime data to seperate the effects of Open Data from other crime effects).

Our conclusion is none of these studies looks . The only common theme is that all these studies and ours uses crime statistics (usually from Open Data) and contain some form of regression modelling. The latter is a statistical technique (e.g. an estimator) not a research design. The most common design used is simply statistical adjustment via regression modelling using potential confounders (other than fixed effect). There is no additional design such using secret information (i.e. geomasking) to overcome i) selection bias and ii) the obvious issue isolating the causal impact of signalling effects (e.g. separating crime statistics from the effects of crime themselves). We've explained this extensively in the protocol (as reviewer one notes to the point of repetition).

- Dubin, R. A., & Goodman, A. C. (1982). Valuation of education and crime neighborhood characteristics through Hedonic Housing Prices. Population and Environment, 5, 166–181.

Estimand:
Design:

- Ceccato, V., & Wilhelmsson, M. (2012). Acts of vandalism and fear in neighbourhoods: Do they affect housing prices? In V. Ceccato (Ed.), The urban fabric of crime and fear (pp. 191–215). New York, London: Springer.

- Ceccato, V., & Wilhelmsson, M. (2018). Does crime impact real estate prices? An assessment of accessibility and location. J. Gerben, N. Bruinsma. & S. D. Johnson, (Eds.), Oxford Handbook on Environmental Criminology (pp. 518–544). Oxford University Press.

- Ceccato, V. & Wilhelmsson, M. (2020) Do crime hot spots affect housing prices? Nordic Journal of Criminology, 21:1, 84-102, DOI: 10.1080/2578983X.2019.1662595

- Buonanno, P., Montolio, D., & Raya-vílchez, J. M. (2012). Housing prices and crime perception. Empirical Economics, 45, 305–321

- Lynch, A. K., & Rasmussen, D. W. (2001). Measuring the impact of crime on house prices. Applied Economics, 33, 1981–1989

- Naroff, J. L., Hellman, D., & Skinner, D. (1980). Estimates of the impact of crime on property values. Growth and Change, 11, 24–30.

- Wilhelmsson, M., & Ceccato, V. (2015). Does burglary affect property prices in a nonmetropolitan municipality? Journal of Rural Studies, 39, 210–218.


We also would like to note that none of these studies have a protocol written before seeing the results. Only a small minority of study conduct falsification tests of their assumptions.

---

Stashed R2 reply

First, all of these paper are about the effect of crimes on property prices. Our paper is about the introduction of crime maps on house property prices. These are not the same causal effects at all and have very different policy implications. Even if crime maps are not ever made available (as in the case of many countries including Scotland), this will not stop crime itself having an effect on property. We have also assumed these authors are implicitly making a causal claim -- it is unclear to us to what extent the authors actually believe they have been successful in getting an unbiased causal estimator. We are very clear about the causal estimand and our goals in the protocol (whether we succeed is another matter dependent on robustness tests).

Second, these paper have very weak identification strategies (e.g. research designs). Almost all of these paper use hedonic modeling (i.e. linear regression models) and are dependent on all relevant confounders being including in the statistical models (along with other parametric assumptions such as correct model specifications etc). The assumption of no omitted confounders is never tested or testable. There is no design-based source of exogeneity (i.e. quasi-random variations in crime) except the occassional use of instrumental variables in alternate specifications. Almost all the instruments are dubious with very little rationale given for their choice. There is also little done to test the assumption that the instruments are exogenous.

Our conclusions are in line with an older review of the literature on crime and house prices by @refGibbons who also pick up on the same issues: weak identification strategies (no design aside from kitchen sink statistical models) and little justification of instruments or robustness tests (when instrumental variables are used). We would also the reviewer to compare and contrast these approaches with our research design.
