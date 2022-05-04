# makeFile 0x get snaps per house sold 


# input -------------------------------------------------------------------

theseSnaps <-
  readRDS('saved cleaned data/makeFile06 snaps.rds')

sypPP_df <-
  'saved cleaned data/makeFile02 syp house prices.rds' %>% readRDS()


# specify global variable -------------------------------------------------
## For the nearest neighbour we have to specify how wide the buffer around the property
whatBuffer <- 
  150


# code --------------------------------------------------------------------

##  1. Get all points 
sypPP_df <-
  sypPP_df %>%
  arrange(datePP)

## Get month and year in decimal format
sypPP_df$year %>% table



# 1.1. Selection which version of snaps to use -------------------------------

theseSnaps$snapVersion %>% table

theseSnaps <-
  theseSnaps %>%
  filter(
    snapVersion == 1
  )


# 2. Get edgelist of properties and crimes --------------------------------

### Double check snap function 
## need to do this in chunks 
## 

## Test it works on a chunk of the data
# nn2_mz(
#   data = theseSnaps %>% dplyr::select(snap_x0, snap_y0), #snaps
#   query = 
#     sypPP_df[1:100,] %>%
#     dplyr::select(oseast1m, osnrth1m), #query where in data is nearest neighbour
#   
#   dataID = theseSnaps$idSnap,
#   queryID = sypPP_df[1:100,]$idPP,
#   radius = whatBuffer,
#   k = 5e2
# )


## now check it works
edgelistNN <-
  sypPP_df %>%
  split(.$year) %>%
  map(
    function(x){
      nn2_mz(
        data = theseSnaps %>% dplyr::select(snap_x0, snap_y0), #snaps
        query = 
          x %>%
          dplyr::select(oseast1m, osnrth1m), #query where in data is nearest neighbour
        
        dataID = theseSnaps$idSnap,
        queryID = x$idPP,
        radius = whatBuffer,
        k = 5e2
      )
    }
  )

## save memory by doing a list first then combine and rename
edgelistNN <- edgelistNN %>% bind_rows()
edgelistNN <- edgelistNN %>% rename(idPP = idQuery, idSnap = idData)



# 3. merge data to edgelist and calculate ---------------------------------
## Get the list of dates and such 

pp2Snap <- 
  edgelistNN %>%
  left_join(sypPP_df %>% select(idPP, datePP)) %>%
  left_join(theseSnaps %>% select(idSnap))

pp2Snap %>% head

# 4. Calculate snaps ------------------------------
# note: no time element here 
pp2Snap %>% head

## create wideform variables re: time
summaryPP2Snap <-
  pp2Snap %>%
  group_by(idPP, datePP) %>%
  summarise(
    ppSnapsNearby = n()
  )

# hotfix: add in distance to nearest snap ---------------------------------
closestSnap <-
  nn2(        data = theseSnaps %>% dplyr::select(snap_x0, snap_y0), #snaps
              query = 
                sypPP_df %>%
                dplyr::select(oseast1m, osnrth1m), #query where in data is nearest neighbour
              k = 1
  )

closestSnap_tab <-
  data.frame(
    idPP = sypPP_df$idPP,
    pp2ClosestSnap = closestSnap$nn.dists[,1]
  )

summaryPP2Snap  <- 
  summaryPP2Snap %>% 
  left_join(
    closestSnap_tab
  )


# output ------------------------------------------------------------------


summaryPP2Snap %>%
  saveRDS('saved cleaned data/makeFile07 snaps nearby house.rds')



