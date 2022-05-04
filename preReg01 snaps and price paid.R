##  preReg01 relationship between snaps and sold price 
##  Code used in pre-registration document 
## See README for which scripts to run beforehand

# input -------------------------------------------------------------------
library(tidyverse)
library(stargazer)


summaryPP2Snap <-
  readRDS('saved cleaned data/makeFile0x snaps nearby house.rds')

summaryPP2Crime <-
   readRDS('saved cleaned data/makeFile04 policeUK count per house.rds')

sypPP_df <-
  'saved cleaned data/makeFile02 syp house prices.rds' %>% readRDS()

# code ---------------------------------------------------------

## 00. check initial data 

sypPP_df %>% 
  group_by(year) %>% 
  summarise(
    n = n(),
    sdPrice = price %>% sd,
    sdLogPrice = log(price) %>% sd
  ) 

## Check volume of house trades and SD of prices

# 1. Join and check descriptives ------------------------------------------
#summaryPP2Crime
joined_PP <-
  summaryPP2Snap %>%
  left_join(summaryPP2Crime) %>%
  left_join(sypPP_df) 

# descriptives of between years ----------------------------

joined_PP %>% 
  filter(year %in% 2009:2013) %>% 
  mutate(
    lnPrice = log(price)
  ) %>%
  group_by(year) %>%
  select(
    year,
    ppSnapsNearby,
    price,
    lnPrice,
    oseast1m,
    osnrth1m
    ) %>%
  summarise_if(
    is.numeric,
    sd
  ) 
## variance of snaps similar

joined_PP %>% 
  #  filter(year %in% 2011:2013) %>% 
  group_by(year) %>%
  summarise(
    n = n()
  )

## massive drop in house volues beginning 2008  

# relationship between crimes and snaps -----------------------------------

## setup sample + specifcy vars ---------------------

regThis <-
  joined_PP

## Pre 2020 covid period 
regThis <-
  regThis %>%
  filter(
    year < 2020
  )

## data clean to trim outliers
regThis <-
  regThis %>%
  group_by(year) %>%
  mutate(
    topPer = price %>% quantile(0.98),
    botPer = price %>% quantile(0.02)
  ) %>%
  ungroup

regThis <-
  regThis %>%
  filter(
    (price < topPer) & (price > botPer)
  ) 



# reg descriptives --------------------------------------------------------


# descriptives of between years ----------------------------

regThis %>% 
  filter(year %in% 2009:2013) %>% 
  mutate(
    lnPrice = log(price)
  ) %>%
  group_by(year) %>%
  select(
    year,
    ppSnapsNearby,
    price,
    lnPrice,
    oseast1m,
    osnrth1m
  ) %>%
  summarise_if(
    is.numeric,
    mean
  ) 
## variance of snaps similar



## setup outcome and variable of interest -------
regThis <-
  regThis %>%
  mutate(
    thisOutcome = 
      #      price,
      log(price),
    #    log(price) / sd(log(price)),
    thisTreat = 
      ppSnapsNearby
  )

## create the formula 
regForm1 <- 
  thisOutcome ~ 
  thisTreat


# regression model --------------------------------------------------------
library(lmtest)
library(sandwich)
library(broom)
library(plm)

## Function for correct SE 
correctSE_tab <- function(x){coeftest(x, vcov = vcovHC(x, type = 'HC0'))}


## nonparametric ------------------------------
regThis %>%
#  filter(year %in% 2009:2013) %>%
  split(.$year) %>%
  map_dbl(
    function(x) {
      cor(x$thisOutcome, x$ppSnapsNearby, method = 'spearman')
    }
  )


## Permutation test
since2008 <-
  regThis %>%
  filter(year %in% 2009:2013)

permutateSpearman <-
  function(x){
    since2008 %>%
      mutate(
        year = year[sample.int(nrow(since2008), nrow(since2008))]
      ) %>%
      split(.$year) %>%
      map_dbl(
        function(x) {
          cor(x$thisOutcome, x$ppSnapsNearby, method = 'spearman')
        }
      )
  }

results <- 
  1:1e4 %>% map(permutateSpearman)

res_tab <-
  results %>%
  bind_rows

res_tab %>% summary

rest_tab <- res_tab %>%
  map_dfr(
    quantile, probs = c(0.025, 0.975)
  ) 

row.names(rest_tab) <- 2009:2013

rest_tab

## This jump is not possible if they were from same distribution

# lm ----------------------------------------------------------------------

fitOLS <-
  lm(log(price) ~ ppSnapsNearby*I(year == 2011),
     data = regThis %>% filter(year %in% 2010:2011)
  )
  
fitOLS_FE <-
  plm(log(price) ~ ppSnapsNearby*I(year == 2011),
     data = regThis %>% filter(year %in% 2010:2011),
     index = 'lsoa01'
  )


fitOLSCoef<- fitOLS %>% correctSE_tab()
fitOLS_FECoef <- fitOLS_FE %>% correctSE_tab()
fitOLSCoef

stargazer(
  fitOLS,fitOLS_FE,
  se = list(fitOLSCoef[,2], fitOLS_FECoef[,2]),
  type = 'text',
  out = 'preReg01 estimator 1b example.html')



# time series -------------------------------------------------------------

# pre-trend ---------------------------------------------------------------

fitOLS_pre <-
  lm(log(price) ~ ppSnapsNearby*I(year == 2010),
     data = regThis %>% filter(year %in% 2009:2010)
  )
fitOLS_pre %>% correctSE_tab()



## logs and non logs -------------------------------------

fitNoLog <-
  regThis %>%
  split(.$year) %>%
  # map(~ plm((price) ~ 
  #             ppSnapsNearby, data = .x, index = 'lsoa01')) %>%
  # 
  # map(~ plm((thisOutcome) ~ 
  #             ppSnapsNearby, data = .x, index = 'lsoa01')) %>%
  map(~ lm(price ~
            ppSnapsNearby, data = .x)) %>%
  map(
    correctSE_tab
  )

plot_fitNoLog <-
  fitNoLog %>%
  map_dfr(tidy)

plot_fitNoLog <- 
  plot_fitNoLog %>%
  filter(
    term %>% grepl('ppSnapsNearby', x=.)
  ) %>%
  mutate(
    year = names(fitNoLog) %>% as.numeric
  )



### log ------

fitLog <-
  regThis %>%
  split(.$year) %>%
  map(~ lm((thisOutcome) ~
             ppSnapsNearby, data = .x)) %>%
  map(
    correctSE_tab
  )

plot_fitLog <-
  fitLog %>%
  map_dfr(tidy)

plot_fitLog <- 
  plot_fitLog %>%
  filter(
    term %>% grepl('ppSnapsNearby', x=.)
  ) %>%
  mutate(
    year = names(fitLog) %>% as.numeric
  )

### plot it


# get time trend pre-2011 ---------------------------------------------------------

ts_fitNoLog <- 
  lm(estimate ~ year, plot_fitNoLog, subset = year < 2011)

ts_fitLog <- 
  lm(estimate ~ year, plot_fitLog, subset = year < 2011)

## check the slope coef
stargazer(
  ts_fitNoLog,
  ts_fitLog,
  type = 'text'
)


# plots -------------------------------------------------------------------
library(gridExtra)

plotA <- 
  plot_fitNoLog %>%
  filter(
    term == 'ppSnapsNearby'
  ) %>%
  ggplot(
    aes(y = estimate, x = year)
  ) +
  geom_point() +
  geom_errorbar(
    aes(ymin = estimate - 1.96*std.error, 
        ymax = estimate + 1.96*std.error)
  ) +
  geom_vline(xintercept = 2010.8, colour = 'blue') +
  geom_abline(
    intercept = ts_fitNoLog$coefficients[1],
    slope = ts_fitNoLog$coefficients[2]
    ) +
  labs(title = 'price (raw)')

plotB <- 
  plot_fitLog %>%
  filter(
    term == 'ppSnapsNearby'
  ) %>%
  ggplot(
    aes(y = estimate, x = year)
  ) +
  geom_point() +
  geom_errorbar(
    aes(ymin = estimate - 1.96*std.error, 
        ymax = estimate + 1.96*std.error)
  ) +
  geom_vline(xintercept = 2010.8, colour = 'blue') +
  geom_abline(
    intercept = ts_fitLog$coefficients[1],
    slope = ts_fitLog$coefficients[2]
  ) +
  labs(title = 'price (logged)')


grid.arrange(plotA, plotB,
             ncol = 2)  



# Check assumptions/ pairwise plots --------------------------------------------

library(GGally)
checkThis <-
  regThis %>%
  filter(year %in% 2010:2011) 

checkThis %>%
  select(year, ppSnapsNearby, oseast1m, osnrth1m) %>%
  ggpairs(ggplot2::aes( colour = year))
