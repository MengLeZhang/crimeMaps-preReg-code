
First, all of these paper are about the effect of crimes on property prices. Our paper is about the introduction of crime maps on house property prices. These are not the same causal effects at all and have very different policy implications. Even if crime maps are not ever made available (as in the case of many countries including Scotland), this will not stop crime itself having an effect on property. We have also assumed these authors are implicitly making a causal claim -- it is unclear to us to what extent the authors actually believe they have been successful in getting an unbiased causal estimator. We are very clear about the causal estimand and our goals in the protocol (whether we succeed is another matter dependent on robustness tests).

Second, these paper have very weak identification strategies (e.g. research designs). Almost all of these paper use hedonic modeling (i.e. linear regression models) and are dependent on all relevant confounders being including in the statistical models (along with other parametric assumptions such as correct model specifications etc). The assumption of no omitted confounders is never tested or testable. There is no design-based source of exogeneity (i.e. quasi-random variations in crime) except the occassional use of instrumental variables in alternate specifications. Almost all the instruments are dubious with very little rationale given for their choice. There is also little done to test the assumption that the instruments are exogenous.

Our conclusions are in line with an older review of the literature on crime and house prices by @refGibbons who also pick up on the same issues: weak identification strategies (no design aside from kitchen sink statistical models) and little justification of instruments or robustness tests (when instrumental variables are used). We would also the reviewer to compare and contrast these approaches with our research design.

> Our paper:

Estimand: Effect of introducing public crime maps on house prices.

Estimator: The estimator is a before and after analysis using interrupted time series. The design uses features of crime map to isolate the effects. These are features (master snap list and extent of geomasking error) are secret and kept from the public. Any remaining confounding is eliminated through the longitudinal design. Robustness tests exist to test the assumption if confounder bias has been eliminated or render negligible. A protocol and pre-registration (i.e. this current submission) is created to reduce opportunities to change the hypotheses, design or statistical analysis after seeing the results. This stops us from p-hacking to obtain statistical significant results or to pass assumption tests by playing around with our statistical analysis. This is unusual for economics.

> Dubin, R. A., & Goodman, A. C. (1982). Valuation of education and crime neighborhood characteristics through Hedonic Housing Prices. Population and Environment, 5, 166–181.

Estimand: The causal estimand is not clearly stated per se but implicity it is the effect of crime in neighbourhood on house prices. E.g. if a crime occured in neighbourhood what is its average effect on house prices.

Estimator: Kitchen Sink statistical modelling (i.e. hedonic modelm see abstract). No design based exogenous source of variation. Bizzarely uses R squared and sign of coefficients to assess the validity of results.

Note: Our modern take is a bit unfair; this is a 1980s paper where the standards for causal inferences in econometrics was looser. The estimand is not about online crime maps or open data; this paper was published before the internet age!

> Ceccato, V., & Wilhelmsson, M. (2012). Acts of vandalism and fear in neighbourhoods: Do they affect housing prices? In V. Ceccato (Ed.), The urban fabric of crime and fear (pp. 191–215). New York, London: Springer.

Estimand: Crime (vandalism) on house prices.

Estimator: Statistical adjustment with no design based source of exogeneity expect for one instrumental variable estimator. Murder is used as an instrument for vandalism; very little rationale is given aside from another paper by Tita et al (2006). 'According to Tita et al.
(2006), murder is an ideal instrument' is their only narrative justification before moving onto statistical tests.

We investigate Tita et al (2006) to check for the rationale behind murder as an instrument to correct measurement error (e.g. underreporting) in violent crimes. The rationale of the paper is not use murder to solve other confounding issues with estimating the effects of

> Ceccato, V., & Wilhelmsson, M. (2018). Does crime impact real estate prices? An assessment of accessibility and location. J. Gerben, N. Bruinsma. & S. D. Johnson, (Eds.), Oxford Handbook on Environmental Criminology (pp. 518–544). Oxford University Press.

Estimand: Crime on house prices.

Estimator: We could not access the chapter but it seems like statistically models without a design-based source of exogeneity is used.

> Ceccato, V. & Wilhelmsson, M. (2020) Do crime hot spots affect housing prices? Nordic Journal of Criminology, 21:1, 84-102, DOI: 10.1080/2578983X.2019.1662595

Estimand: Crime (vandalism hotspots) on house prices

Estimator: Hedonic modelling with no design based source of exogeneity. Unlike their previous articles, the authors chose not to implement IV estimation (lack of strong and credible instruents).

> Buonanno, P., Montolio, D., & Raya-vílchez, J. M. (2012). Housing prices and crime perception. Empirical Economics, 45, 305–321

Estimand: Crime perception on house prices. We find this one strange because actual crime is a cause of both crime perceptions and other mediating factors (e.g. property damage) that affect house prices.

Estimator: Use of instrumental variables with historical levels of victismation and share of youths as instrument for crime perception in the modern day. Other sources of confounding are adjusted for using regression adjustment. Although we are not convinced about the credibility of the instruments, they do dedicate some space to discuss their choice of instruments. Exogeneity of instruments is tested through the Sargan-Hansen's J- test which has flaws (see our summary of Wilhelmsson, M., & Ceccato 2015).

> Lynch, A. K., & Rasmussen, D. W. (2001). Measuring the impact of crime on house prices. Applied Economics, 33, 1981–1989

Estimand: Crime on house prices.

Estimator: Hedonic modelling with no design based source of exogeneity.

> Naroff, J. L., Hellman, D., & Skinner, D. (1980). Estimates of the impact of crime on property values. Growth and Change, 11, 24–30.

Estimand: Effect of crime on house prices.

Estimator: Unsure. We cannot access the full paper. But the estimator is likely to be a reduced form regression equation like in Dubin and Goodman (1982). In which case the same comment apply re: lack of design based exogeneity.


> Wilhelmsson, M., & Ceccato, V. (2015). Does burglary affect property prices in a nonmetropolitan municipality? Journal of Rural Studies, 39, 210–218.

Estimand: Crime (in this case burgarly) on house prices.

Estimator: Statistical adjustment only: hedonic modelling with alternative specifications for spatial autocorrelation and modelling quantiles. One estimator (out of several) has a design based approach:  share of young males in the area and the share of convenience stores are used instruments is used as an instrument for burglary. Barely any rationale is given for the choice of instrument and a Sargan-Hansen's J- test is used to test the instrument validity. This is a weak test that will pass dubious instruments:

> such tests reject instrument validity may often barely exceed small levels, even when instruments are seriously invalid, whereas even minor invalidity of instruments can severely undermine inference on regression coefficients by instrumental variable estimators. These uncomfortable patterns may be aggravated when particular valid or invalid instruments are relatively weak or strong.

https://www.sciencedirect.com/science/article/pii/S0165176521002123
