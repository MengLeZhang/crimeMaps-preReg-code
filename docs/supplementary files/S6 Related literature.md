
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


----

Systematic review methodology:

1. Google scholar search for crime maps, crime maps AND house prices
2. Citation search of a widely cited paper Tompson et al 2015.
2. Use connected paper to find papers. Our seed papers were:
   - Quinton 2011
   - Thompson et al 2015
3. Follow on from citations mentioned from steps 1 and 2 as well as our own prior literature review.

Our selected literature

## Dots vs Density: Wuschke et al 2022

Crime maps and whether the type of maps affect public perception
method: hypothetical crime map and use mechanical turk to gauge participants reactions to each map.

Interesting background info on the background to open policing:
> In 2014, President Obama appointed the President’s Task Force on 21st Century Policing and charged them with identifying best practices for strengthening police legitimacy (President’s Task Force 2015). One of the recommendations resulting from the task force emphasises transparency as an essential component of building trust and legitimacy. Part of this transparency requires a commitment to providing public access to up-to-date crime data (President’s Task Force 2015). The Police Data Initiative (Police Data Initiative 2017) emerged because of these recommendations, acting as a national open data repository to facilitate research and promote accountability. __This push toward open access to policing data is not unique to the United States; rather, changes in the U.S. mirror similar trends occurring across the globe (see for example, Chainey and Tompson (2012), Sampson and Kinnear (2010), and Tompson et al. (2015) for a discussion on open data trends within the UK; Janssen et al. (2012) for a thoughtful discussion about open data use and practices within the Netherlands; and Scassa (2016) for a comparison of mapped data availability within the Canadian context).__

There is also a for profit crime mapping sector:
> The combination of technological advances, increased access to spatial data, place-based policing strategies, and a push toward open data has resulted in a proliferation of online crime maps available via police websites (Groff et al. 2005, Leong and Chan 2013, Paulsen and LeBeau 2012, Ratcliffe 2002, Wartell and McEwen 2001). While some agencies provide access to ‘in house’ maps generated by their own personnel and technology, more agencies have elected to collaborate with private-sector companies to manage and share their crime data. Companies such as CommunityCrimeMapTM, CityProtectTM and CrimeMapping.comTM have emerged as industry leaders within the for-profit crime mapping sector, controlling the majority of the market (Marteache et al. 2020).

There are papers on the impact of decisions in the mapping methodology on perceptions:
> Maps, and interactive maps in particular, are powerful communication tools, and the decisions made during the mapping process have the potential to shape the message received by the map viewer (Crampton 2001, Kindynis 2014, Stieb et al. 2019).

Other notes on the untapped literature on mapping health:
> Given the broad use of risk communication maps, scholars have explored these tools to investigate how decisions made at the cartographic level impact the viewer’s ability to understand, assess and respond to visual phenomena (Dransch et al. 2010, Stieb et al. 2019). Much of the research is centred within heath risk and natural disaster preparation and response (Goerlandt et al. 2020), focusing on communication about topics such as earthquake risk (Bostrom et al. 2008), risk of flood (Bell and Tobin 2007, Dransch et al. 2010, Hagemeier-Klose and Wagner 2009), storm surge communication (Morrow et al. 2015) and environmental pollutants and associated health risks (Lahr and Kooistra 2010, Stieb et al. 2019). Communication in itself is heavily emphasised within this body of research: ‘one challenge of risk communication can be seen as the effort to convince people that a risk is real, to describe what its characteristics are and to provide information on what can be done about it’ (Dransch et al. 2010, p. 292–293). Maps, in particular, have been used as a medium for risk communication for decades, and more recently, such hazard communication maps have become more prevalent in online and interactive forms (Hagemeier-Klose and Wagner 2009, Stieb et al. 2019).

Ooo there has been work on public perceptions of crime maps:
> Building upon this body of literature, Kounadi, Bowers and Leitner conducted a survey to explore public perceptions of privacy concerns associated with mapped crime data (2015). The study asked members of the public, solicited through door-to-door surveying, to share their level of agreement with a series of questions relating to location privacy concerns. Results indicate that there is some awareness and concern about privacy implications associated with public crime maps. Respondents reported higher levels of concern about crime data being misused for commercial purposes, than being used to identify suitable targets. This study also explored map type, finding that interactive graduated symbol point maps (as typically used in online crime maps) produced more fear than road network-based density representations (Kounadi et al. 2015).

Also this other reference to another trial of public perception:
> Groff, E.R., et al., 2005. A randomized experimental study of sharing crime data with citizens: do maps produce more fear? Journal of experimental criminology, 1 (1), 87–115.


__Method__ they were shown one city neighbourhood using the same underlying data. They were asked questions about the neighbourhood from each map. No manipulation occured to make some areas more crime ridden.

N is approximately 100 participants

__Results__ Questions were asked about perceived property valies:
> Survey participants were asked the following question: ‘How much would a 3-bedroom, 2-bathroom, 2,200 square foot house cost in this neighbourhood? The average price of a home this size in the United States (U.S.) is currently about $300,000.’ A sliding scale ranging from $100,000 to $500,000 was provided to record the participant answers to this question. The average value for the sample as a whole was $184,370 (SD = 63,752).

Table 1
- house prices were statistically sig higher for kernal maps
- dot maps have worse ratings for safety, residential coesion, nhood quality, and police performance
- bizzarely perceived incidents were higher for kernal maps too
- so overall the picture is complicated

Dot desnity maps also seem far more likely to raise privacy concerns (See table 3)

## Groff et al 2005

> Groff, E.R., et al., 2005. A randomized experimental study of sharing crime data with citizens: do maps produce more fear? Journal of experimental criminology, 1 (1), 87–115.

Summary: Uses an experiment to check perceptions of crime maps. Different areas of California. Comparison of perceptions of maps vs tabular data. People who viewed maps reported less fear. Respondents who were given maps were more likely to recommend a move to someone than those shown tabular data.

__Background__:
>  However, debate continues concerning the impact of releasing crime data to the public. Opponents argue that neighborhoods with higher crime rates will be unnecessarily stigmatized and redlined, while proponents assert that public dissemination of crime information will empower community members to get involved in their communities (Harries 1999; Lavrakas et al. 1983; Pate et al. 1986a; Ratcliffe 2002; Wartell and McEwen 2000).

Context: Readland CA police department who began providing access to public crime maps since end of 2002.
- These researchers were invited by the police department to evaluate the impact of the maps vs tabular data

Uptake of GIS among police was in the later 90s in the US
> A 1997 survey by the National Institute
> of Justice indicated that approximately 13% of all law enforcement agencies were
> SHARING CRIME DATA WITH CITIZENS: MAPS 89
> using computer mapping (Mamalian et al. 1999). However, the adoption rate
> varied by the size of the agency; among larger agencies with 100 or more officers,
> approximately one third reported using mapping. Two years later, a 1999 survey by
> the Police Foundation found a marked increase in adoption with over half of the
> agencies surveyed using computer mapping for crime analysis (Weisburd et al.
> 2001a).4 T

Their only literature review found 4 paper on this:

> The authors could find only four studies on the
> subject, the first three of which were part of a group that looked at whether crime
> statistics included in crime prevention newsletters increased fear of crime. Another
> study investigated the change in the perception of neighborhood safety when
> community groups were given their own mapping capability. The first three
> studies were part of a set of research that included one quasi-experimental design
> and two randomized experiments. These studies tested whether crime prevention
> newsletters by themselves produced more fear than the same newsletter with crime
> statistics included. The studies were conducted in Evanston, IL (Lavrakas and Herz
> 1982), Houston, TX (Lavrakas et al. 1983), and Newark, NJ (Pate et al. 1985).6

^ The studies conducted were testing crime statistics vs a newsletter

> The results for the quasi-experimental study in Evanston indicated no difference
> in fear levels between those who received crime statistics and those who did not.
> The Houston and Newark studies were randomized experiments and used the same
> methodology in each city. Specifically, two experimental conditions, newsletter and
> newsletter with crime information, and a control group were used. The newsletter
> with crime information showed the boundaries of the neighborhood and reported
> detailed crime information for the previous month. They also used two study
> designs, a panel design (with pre- and post-test) and post-test only. In both Houston
> and Newark, there was no significant difference between groups with respect to fear
> of personal victimization. However, among the panel design participants in
> Houston, the pretest scores indicated they were slightly but significantly more
> fearful of property crime victimization. Overall, the results of these three studies
> provide preliminary evidence that sharing tabular crime data produces little or no
> additional fear among residents. In addition, they found that neighborhood residents
> reacted positively to receiving the detailed crime information. However, the authors
> called for additional research on the relationship between sharing crime data and
> fear levels (Pate et al. 1985).

__methods__
Particpant: 314 resident recruited from some sort of night market/ outdoor festival then community centres and university. Basically a type of convenience sample.

treatment:
- treamtent arm 1: Graduated symbol map
- 2. density map
- 3. control: orientation map? Basically areal block map i.e. such as LSOA or MSOA map. This is essentially crime statistics. Shown as a reference companion
Spilt into 4 areas

__Results__
Most of the results was on fear
- On whole no effect of maps on fear
- No effect on moving except for area 4 and 5 (see p101). Map treatment arm respondents were more likely to recommend a move to area 4.  They use this as evidence that crime maps do not stigmatise high crime areas. Areas 4 and 5 are reisdential suburbs

__limitations__
- representative sample

## Kounadi et al 2015: Crime mapping on-line: public perception of privacy issues

Summary: Survey to check publics perception of privacy when info is displayed on a crime map. Participants are from Camden, London. Participant express concern when implications of crime mapping were revealed to them. Also they say that the current police.uk cartographic technique created perceptions of unsafe nhood vs density maps.


__Background__

I should take note of the potential for reidentification:
> revious research has focused on privacy preservation techniques but also on the detailed examination of the disclosure risk (or "re-identification risk"). Some studies proved the possibility of reengineering the original locations from published maps (Brownstein et al. 2006; Curtis et al. 2006; and Leitner et al. 2007). Also, other studies have shown that even if data have been masked prior to their release there are still considerable re-identification risks (Cassa et al. 2008 and Zimmerman and Pavlik 2008). Finally, previous research has revealed how locations can be linked to extract further information about individuals such as names or telephone numbers (Krumm 2007; and Kounadi et al. 2013).

They say that the fear of identification is greatests for violent crimes and burglary. This is partly because burglaries are mapped to a home but also:

> For instance, Ratcliffe (2002) argues that if specific addresses of burglaries are publicly available, it would imply that the victims' properties were vulnerable to burglary. Furthermore, the U.S. Department of Justice produced a guidelines report describing how to appropriately share crime maps and spatial data (Wartell and McEwen 2001). One ofthe main chapters of this report is dedicated to data confidentiality and outlines four privacy issues when exact locations are show on maps: a) the victims may fear that offenders will consider them as easy targets, b) as a consequence the victims will not want to participate in investigations, c) in case of re-victimization they will be reluctant to report the incident to the police, and d) address specific information could be further misused (Wartell and McEwen 2001).


Oooh good info on the first crime maps:
> Online crime mapping has been used for nearly two decades. The first crime maps on the Internet were published by the San Diego Police Department (SDPD) in 1996 and in 1999 the first interactive crime mapping Web site was developed by the same authority (Wartell 2001).


Another potential paper about police.uk:
> A recent research report examined the public perceptions on the national crime mapping website in the UK as well as other alternative methods of sharing crime data with the public (Ray et al. 2012). The findings of the report suggested information enhancement in five directives: quantity, quality, relevance, usability and comprehensibility.

The results of that research is here: https://www.bl.uk/collection-items/perceptions-of-the-policing-and-crime-mapping-trailblazers
- Qualitative data from telepgone interviews with policy maker and practioners plus focus groups with public

Oh fab in the appendix they have black and white maps of police.uk .

Their previous knowlegde on prior studies on locational privacy:
> To the best knowledge of the authors there have been so far only two studies that attempted to identify the people's beliefs on location privacy (Kar et al. 2013; Benisch et al. 2011).


__Method__

Treatment: 4 different questionnaires were created. With 4 diff types of crime maps -- these were accompanied by questions re: disclosure.

Interesting tidbit re: the current police maps:
> Map C is the current technique that the police employs. It is a mixture of two cartographic techniques: graduated symbol at a small scale and point distribution as you zoom in to larger scales.

Sample: Survey of face to facte interviews. From June to Huly 2013, sample size is approx 200. They randomly sample areas and when to nearest address.

How many people use police.uk was also asked:
> The protection method related questions showed that the majority of respondents have never seen crime maps on the police.uk website and only 26.4 % have visited the website at least once. However, there seems to be a considerable increase in the website's usage since data from the Crime Survey for England and Wales on the first quarter of 2011 showed that only 7 % of people looked at or used the online crime maps (Chaplin et al. 2011).
