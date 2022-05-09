##  makeFile04: crimes and snaps around a sold house each month 

# input/output ------------------------------------------------------------

sypPP_df <-
'saved cleaned data/makeFile02 syp house prices.rds' %>% readRDS()

policeUk_df <- 
  'saved cleaned data/makeFile03 policeUk data.rds' %>% readRDS


# specify global variable -------------------------------------------------
## For the nearest neighbour we have to specify how wide the buffer around the property
whatBuffer <- 
  150



# code (run after setting global vars) ------------------------------------



##  1. Get all points 
sypPP_df <-
  sypPP_df %>%
  arrange(datePP)

## Get month and year in decimal format
sypPP_df$year %>% table
  
# hotfix remove month and year from police --------------------------------

policeUk_df <-
  policeUk_df %>%
  select(-month, -year)

# 2. Get edgelist of properties and crimes --------------------------------

### Double check snap function 

library(RANN)

nn_crime2house <-
  nn2(
    data = policeUk_df %>% dplyr::select(snap_x0, snap_y0), #snaps
    query = sypPP_df %>% dplyr::select(oseast1m, osnrth1m), #query where in data is nearest neighbour
    searchtype = 'radius',
    radius = whatBuffer,
    k = 1e3
  )

##  Convert to sparse matrix
library(Matrix)

sparseNN.idx <- 
  nn_crime2house$nn.idx %>%
  Matrix(sparse = T)

sparseNN.dist <- 
  nn_crime2house$nn.dists %>%
  Matrix(sparse = T)

## Example of how a sparse matrix works 

# nearest0_temp$nn.idx[1:3, 1:3]
# nearest0_temp$nn.idx[1:3, 1:3] %>% Matrix(sparse = T) %>% summary
# 
## Make an edgelist of the sparseMatrix 

## Conver sparse matrix to edgelist
edgelistNN <- 
  (sparseNN.idx %>% summary) %>%
  as.data.frame()

edgelistNN$i %>% summary # i = property

edgelistNN <-
  edgelistNN %>%
  mutate(
    idPP = sypPP_df$idPP[i],
    idPoliceUK = policeUk_df$idPoliceUK[x]
#    dist_crime2house = (sparseNN.dist %>% summary)$x # distance is a bit broken
  )



# 3. merge data to edgelist and calculate ---------------------------------
## Get the list of dates and such 

pp2policeUk <- 
  edgelistNN %>%
    left_join(sypPP_df %>% select(idPP, datePP)) %>%
    left_join(policeUk_df %>% select(idPoliceUK, datePoliceUK))


## save space
rm(edgelistNN)
# 4. Calculate crimes before sale ------------------------------

pp2policeUk <-
  pp2policeUk %>%
  mutate(
    dateDiff_pp2policeUk = datePP - datePoliceUK
  )


## create wideform variables re: time

pp2policeUk <-
  pp2policeUk %>%
  mutate(
    ppElapsed_minus180 = dateDiff_pp2policeUk %>% dplyr::between(-180, -1),
    ppElapsed_minus90 = dateDiff_pp2policeUk %>% dplyr::between(-90, -1),
    ppElapsed_180 = dateDiff_pp2policeUk %>% dplyr::between(1, 180),
    ppElapsed_90 = dateDiff_pp2policeUk %>% dplyr::between(1, 90) 
  )


## Summary of crimes around propertyies sold 
summaryPP2Crime <-
  pp2policeUk %>%
  select(idPP, starts_with('ppElapsed')) %>%
  group_by(idPP) %>%
  summarise_all(
    sum
  )



# output ------------------------------------------------------------------


summaryPP2Crime %>%
  saveRDS('saved cleaned data/makeFile04 policeUK count per house.rds')

