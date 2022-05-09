##  Westlands house price data
##  Output: house price data for South Yorkshire 1995 onwards

# Input -----------------------------------------------------------
## input = data from 
make01_sypPcds <-
  read_csv('saved cleaned data/makeFile01 syp pcds.csv')



# code --------------------------------------------------------------------

##  1) Load in land reg data and filter to west mids
## no headers in this data!
## Check this https://www.gov.uk/government/statistical-data-sets/price-paid-data-downloads?
landReg_df <-
  '../data/house prices (england and wales)/pp-complete.csv' %>%
  fread(#nrows = 1, #if you want to see data struct read only 1 row
        header = F,
         select =
           c('V2', #price
             'V3', # transaction date
             'V4', #postcode
              'V5', #type of property
              'V6', #old or new 
              'V15' ##PPD type -- A = consistent
             ) 
        )


##  Renaming variables

landReg_df <-
  landReg_df %>%
  rename(
    price = V2,
    date = V3,
    pcd = V4,
    type = V5,
    oldNew = V6,
    ppdType = V15
  ) 

landReg_df <-
  landReg_df %>%
  mutate(
    year = substr(date, 1, 4),
    month = substr(date, 6, 7)
  ) 

##  Filter to 1) year and THEN 2) leftjoin postcodes
sypPP_df <-
   landReg_df %>%
   filter(
     year %in% 1995:2020
   ) 

sypPP_df <-
  sypPP_df %>%
  left_join(
    make01_sypPcds
#    by = c('pcd' = 'pcds')
  )

sypPP_df <-
  sypPP_df %>%
  filter(
    !(oseast1m %>% is.na)
  )


# final cleanup -----------------------------------------------------------


## Format dates -----------------------------------------

sypPP_df <-
  sypPP_df %>%
  mutate(
    date = 
      date %>% substr(1,10) %>% as.Date(format = "%Y-%m-%d")
  ) %>%
  rename(
    datePP = 
      date
  )


# get id number -----------------------------------------------------------
sypPP_df <-
  sypPP_df %>%
  mutate(
    idPP = 1:nrow(sypPP_df)
  )


# Output ------------------------------------------------------------------


saveRDS(sypPP_df,
        'saved cleaned data/makeFile02 syp house prices.rds')

