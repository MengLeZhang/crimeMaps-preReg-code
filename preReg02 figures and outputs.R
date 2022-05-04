##  preReg2 figures and tables 
## This is to digitise the handdrawn figures 

library(tidyverse)

# create fake data --------------------------------------------------------

tsData <-
  data.frame(
    year = 2001:2013
  ) 

set.seed(1243)
tsData <-
  tsData %>%
  mutate(
    trend1 = - 0.5 + rnorm(13, sd = 0.01) - 0.001*(year - 2001),
    trend2 = - 0.3 + rnorm(13, sd = 0.01) - 0.001*(year - 2001),
    beta = ifelse(year < 2011, trend1, trend2),
    period = ifelse(year < 2011, 'No intervention', 'Post intervention')
  )

tsData <- 
  tsData %>%
  mutate_at(vars(year), as.factor)



# example its -------------------------------------------------------------

ggplot(tsData, aes(x=year, y=beta, shape = period))+
  geom_point(size = 3) +
  theme_minimal()+
  theme(
    axis.text.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.title = element_text(size = 12, face = 'bold'),
    legend.position = "bottom", legend.box = "horizontal"
  ) +
  geom_abline(intercept = -0.5, slope = -0.001) +
  labs(
    title = "An illustration of an interrupted time series",
    x = 'T (year)',
    y = expression(beta)
  )
