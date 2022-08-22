

> Our paper:

Estimand: Effect of introducing crime maps on house prices. This separate from the effects of crime on house prices through other avenues.

Estimator: The estimator is a before and after analysis using interrupted time series. The design uses features of crime map to isolate the effects. These are features (master snap list and extent of geomasking error) are secret and kept from the public. Any remaining confounding is eliminated through the longitudinal design. Robustness tests exist to test the assumption if confounder bias has been eliminated or render negligible. A protocol and pre-registration (i.e. this current submission) is created to reduce opportunities to change the hypotheses, design or statistical analysis after seeing the results. This stops us from p-hacking to obtain statistical significant results or to pass assumption tests by playing around with our statistical analysis. This is unusual for economics.

> Dubin, R. A., & Goodman, A. C. (1982). Valuation of education and crime neighborhood characteristics through Hedonic Housing Prices. Population and Environment, 5, 166–181.

Estimand: The causal estimand is not clearly stated per se but implicity it is the effect of crime in neighbourhood on house prices. E.g. if a crime occured in neighbourhood what is its average effect on house prices.

Estimator: Kitchen Sink statistical modelling (i.e. hedonic modelm see abstract). No design based exogenous source of variation. Bizzarely uses R squared and sign of coefficients to assess the validity of results.

Note: Our modern take is a bit unfair; this is a 1980s paper where the standards for causal inferences in econometrics was looser. The estimand is not about online crime maps or open data; this paper was published before the internet age!

> Ceccato, V., & Wilhelmsson, M. (2012). Acts of vandalism and fear in neighbourhoods: Do they affect housing prices? In V. Ceccato (Ed.), The urban fabric of crime and fear (pp. 191–215). New York, London: Springer.

Estimator: Crime (vandalism) on house prices.

Estimand: Statistical adjustment with no design based source of exogeneity expect for one instrumental variable estimator. Murder is used as an instrument for vandalism; very little rationale is given aside from another paper by Tita et al (2006).

- Ceccato, V., & Wilhelmsson, M. (2018). Does crime impact real estate prices? An assessment of accessibility and location. J. Gerben, N. Bruinsma. & S. D. Johnson, (Eds.), Oxford Handbook on Environmental Criminology (pp. 518–544). Oxford University Press.

- Ceccato, V. & Wilhelmsson, M. (2020) Do crime hot spots affect housing prices? Nordic Journal of Criminology, 21:1, 84-102, DOI: 10.1080/2578983X.2019.1662595

- Buonanno, P., Montolio, D., & Raya-vílchez, J. M. (2012). Housing prices and crime perception. Empirical Economics, 45, 305–321

- Lynch, A. K., & Rasmussen, D. W. (2001). Measuring the impact of crime on house prices. Applied Economics, 33, 1981–1989

> Naroff, J. L., Hellman, D., & Skinner, D. (1980). Estimates of the impact of crime on property values. Growth and Change, 11, 24–30.

Estimand: Effect of crime on house prices.

Estimator: Unsure. We cannot access the full paper. But the estimator is likely to be a reduced form regression equation like in Dubin and Goodman (1982). In which case the same comment apply re: lack of design based exogeneity.


> Wilhelmsson, M., & Ceccato, V. (2015). Does burglary affect property prices in a nonmetropolitan municipality? Journal of Rural Studies, 39, 210–218.

Estimand: Crime (in this case burgarly) on house prices.

Estimator: Statistical adjustment only: hedonic modelling with alternative specifications for spatial autocorrelation and modelling quantiles. One estimator (out of several) has a design based approach:  share of young males in the area and the share of convenience stores are used instruments is used as an instrument for burglary. Barely any rationale is given for the choice of instrument and a Sargan J / difference in Sargan Statistics test is used to test the instrument validity. This is a weak test that will pass dubious instruments:

> such tests reject instrument validity may often barely exceed small levels, even when instruments are seriously invalid, whereas even minor invalidity of instruments can severely undermine inference on regression coefficients by instrumental variable estimators. These uncomfortable patterns may be aggravated when particular valid or invalid instruments are relatively weak or strong.

https://www.sciencedirect.com/science/article/pii/S0165176521002123
