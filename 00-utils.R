# Utility functions and includes download links / paths

##  Library call
pkgs <-
  c('tidyverse',
    'data.table',
    'sf',
    'tmap',
    'Matrix',
    'RANN'
  )

sapply(pkgs, require, character.only = T)

# EPSG strings from https://www.maths.lancs.ac.uk/rowlings/Teaching/UseR2012/cheatsheet.html
latlong = "+init=epsg:4326"
ukgrid = "+init=epsg:27700"
google = "+init=epsg:3857"


##  Data file paths -------------------
##  Note: Small files are kept locally; larges ones are in my google drive folder
##  Note: cleaned data is used in the safe setting
##  Note: Data is now stored in a folder outside this repo folder (next directory up; reachable with ../)

## Land registery download (all years and huge)
## https://www.gov.uk/government/statistical-data-sets/price-paid-data-downloads#yearly-file
## in google drive

## Police.uk data Dec 2010 - 2013
# https://data.police.uk/data/archive/
## The file is within my google drive -- just put into data/
## Google Drive/Google Drive/Spatial lookup files/policeUK crime data
# git ignore the whole folder
## excluding the ZIP file!

policeUk_path <-
    '../data/policeUK crime data'

## !!Note: PoliceUk file is saved in folder with months and within contains csv for police force
## for every file 
allFiles_path <-
  policeUk_path %>% 
  file.path(
    list.files(policeUk_path, recursive = T)
  ) 
## only csvs
allFiles_path <-
   allFiles_path[grepl(allFiles_path, pattern = '.csv')]


## filter to just SY
allFiles_path <-
   allFiles_path[grepl(allFiles_path, pattern = '-south-yorkshire-street.csv')]

##  police.uk crime categorisation ----------------
policeCat_path <- 
  '../data/policeUK crime categorisation/police-uk-category-mappings.csv'


# Functions ---------------------------------------------------------------
## create an edgelist function 

# input = data and query as per nn2 but more memory efficient -------------
## query is list of points you want to find nearest neighbours for
## data = list of points containing potential nearest neighbours
nn2_mz <-
  function(
    data,
    query,
    dataID, 
    queryID,
    radius = 150,
    k = 5e2
  ){
    
    # Require RANN and Matrix
  nn_temp <- 
    RANN::nn2(
      data = data,
      query = query,
      searchtype = 'radius',
      radius = radius,
      k = k
    )
  ## make sparse 
  sparseNN.idx <- 
    nn_temp$nn.idx %>%
    Matrix(sparse = T)
  
  ## Cleanup
  rm(nn_temp)
  
  ## Example of how a sparse matrix works 
  
  # nearest0_temp$nn.idx[1:3, 1:3]
  # nearest0_temp$nn.idx[1:3, 1:3] %>% Matrix(sparse = T) %>% summary
  # 
  ## Make an edgelist of the sparseMatrix 
  
  ## Conver sparse matrix to edgelist
  edgelistNN <- 
    (sparseNN.idx %>% summary) %>%
    as.data.frame()
  
  ## egdelist 
  edgelistNN <-
    edgelistNN %>%
    mutate(
      idData = dataID[x],
      idQuery = queryID[i] 
    )
  
  return(edgelistNN)
  }


## Example (do not run)
##  k = 2 nearest neighbours with 10m 
# nn2_mz(
#   data = data.frame(1:500, 1:500),
#   query = data.frame(1:2, 3:4),
#   dataID = 1:500,
#   queryID = 1:2,
#   k = 2,
#   radius = 10
# )

