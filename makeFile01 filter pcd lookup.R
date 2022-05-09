##  makeFile01 postcode to SYP force boundaries 
##  goal: use SYP borders (From police.uk) to get list of pcd covered 


# input/ dependencies -----------------------------------------------------
## police border file from policeUK in google docs folder
forcesKML <- '../data/force kmls/south-yorkshire.kml'

## GB postcodes
## https://geoportal.statistics.gov.uk/datasets/ons-postcode-directory-may-2020
pcd_path <-
  '../data/postcodes/ONS_Postcode_Directory_Latest_Centroids.csv'


# code --------------------------------------------------------------------

# 1. Read in file 
syp_sf <-
  forcesKML %>%
  st_read()

##  2. Get the postcode data 
pcdLookup_df <- 
  fread(pcd_path,
        select = c('pcd', 'X', 'Y', 'oseast1m', 'osnrth1m', 'lsoa01', 'oa01')
      #   nrows = 1 # for checking headers 
         )

## Filter the table first to Sheffield PCDS/ or at least those in the north 
##  This pre-filtering save memory
pcdLookup_df <- 
  pcdLookup_df %>%
  filter(
    substr(pcd, 1, 2) %in% c(paste0('S', 1:9), 'DN')
  )

## 2. Turn pcd into coords 

pcdLookup_sf <-
  pcdLookup_df %>%
  filter(
    !(X %>% is.na)
  ) %>%
  st_as_sf(
    coords = c('X', 'Y'),
    crs = st_crs(syp_sf)
  )

## Filter and save (or do not filter to get the whole of the UK)

syp_pcds <- 
  pcdLookup_sf[syp_sf,]

## Check it looks like SY (do not run)
##  syp_pcds[sample.int(nrow(syp_pcds), 1e4),] %>% qtm 
## we're done


# Final checks and vars ---------------------------------------------------

## id  ---
syp_pcds <-
  syp_pcds %>%
  mutate(
    idPcd = 1:nrow(syp_pcds)
  )


# Output ------------------------------------------------------------------

st_geometry(syp_pcds) <- 
  NULL

syp_pcds %>% write_csv('saved cleaned data/makeFile01 syp pcds.csv')
  

