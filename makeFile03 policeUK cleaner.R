## Clean up the police.uk data and subset to one area

## 1) Load Police. uk and turn that data into points----- 
## Cleaning police.uk
police_df <- 
  lapply(allFiles_path, read.csv)

police_df <-
  police_df %>% 
  data.table::rbindlist(fill = T)

police_df <-
  police_df %>%
  mutate(
    year = substr(Month, 1, 4),
    month = substr(Month, 6, 7) %>% as.numeric()
    ) %>%
  dplyr::select(
    Month,
    month,
    year,
    Longitude,
    Latitude,
    LSOA.code,
    Crime.type
  )


# hotfix ------------------------------------------------------------------


## validation --- get rid of NA
#police_df %>% summary

police_df <-
  police_df %>% 
  filter(
    !is.na(Longitude)
    )



# hotfix to check unique snaps --------------------------------------------
##  Do not run unless:
##  1. checking all snaps in UK
##  2. changed the filter in 00-utils and makeFile02 to not subset to South yorkshire
## last edit: 31/1/2022


## Check by first appearance ------

# uniqueSnaps <-
#   police_df %>%
#   mutate(
#     time = as.numeric(year) + (month - 1)/12
#   ) %>%
#   group_by( 
#            Longitude, 
#            Latitude) %>%
#   summarise(
#     firstTime = time[1],
#     totalUsed = n()
#   )
# 
# uniqueSnaps$firstTime %>% table
# uniqueSnaps$firstTime %>% hist
# # [Results] 
# ## Overwise the rest tapers off in an expected fashion
# ## A very large number of snaps  appears in december 2012 
# 

 ## Check by month/ year --------
#  uniqueSnaps <-
#    police_df %>%
#    group_by(year, 
#             month, ## comment out to just do year 
#             Longitude, Latitude) %>%
#    summarise(
#      totalUsed = n()
#    )
# 
#
# checkSnap_period <-
#   uniqueSnaps %>%
#   group_by(year, month) %>%
#   summarise(
#     used = n()
#   )
# 
# ## Time series of unique snaps by months 
# # year, month, used
# # 2010	12	191252
# # 2011	1	201659
# # 2011	2	203474
# # 2011	3	217085
# # 2011	4	224656
# # 2011	5	220024
# # 2011	6	219554
# # 2011	7	228642
# # 2011	8	223098
# # 2011	9	218951
# # 2011	10	224231
# # 2011	11	213345
# # 2011	12	230560
# # 2012	1	237819
# # 2012	2	235265
# # 2012	3	259377
# # 2012	4	267943
# # 2012	5	282809
# # 2012	6	275923
# # 2012	7	290545
# # 2012	8	289510
# # 2012	9	273140
# # 2012	10	279742
# # 2012	11	269797
# # 2012	12	251773
# # 2013	1	270082
# # 2013	2	253285
# # 2013	3	263313
# # 2013	4	266516
# # 2013	5	273263
# # 2013	6	277309
# # 2013	7	296017
# # 2013	8	284071
# # 2013	9	271803
# # 2013	10	274199
# # 2013	11	264149
# # 2013	12	252641
# 
 ## Time series = first 3 months of policeUK had the same data? 
 ## Prediction is that they implemented it in Dec 2011 
## Less use of snaps in first 3 months may be due to police data being worse in some forces at start
 
# ## check versions:
# ## create a time frank variable
# uniqueSnaps <-
#   police_df %>%
#   mutate(
#     time = as.numeric(year) + (month - 1)/12 
#   ) %>%
#   mutate(
#     version = 
#       ifelse(
#         time <= (2011 + (11-1)/12), 1, 2)
#   )
#   
# 
# ## now get data by those version dates
# uniqueSnaps <-
#   uniqueSnaps %>%
#   group_by(version, 
#            Longitude, Latitude) %>%
#   summarise(
#     totalUsed = n()
#   )
# 
# ## Check by version 
#  uniqueSnaps %>%
#    group_by(version) %>%
#    summarise(
#      used = n()
#    )
# 
# ## here's the points 
#  version   used
#  <dbl>  <int>
#  1       1 462326
#  2       2 733620
#
# end hotfix --------------------------------------------------------------



## Transform to UK grid

police_sf <- 
  police_df %>%
  st_as_sf(
    coords = c('Longitude', 'Latitude'),
    crs = st_crs(latlong)
  ) %>%
  st_transform(
    crs = st_crs(ukgrid)
  )

##  1.1 Save a cleaned version of the file
police_df_out <-
  police_df %>%
  bind_cols(
    st_coordinates(police_sf) %>% as.data.frame()
  )

# do not run: check space
#police_df_out %>% object.size()

police_df_out <- 
  police_df_out %>%
  rename(
    snap_x0 = X,
    snap_y0 = Y
    )


# Final checks and save ---------------------------------------------------
##  data formatting 
police_df_out <-
  police_df_out %>%
  mutate(
    datePoliceUK = paste(sep = '-', Month, '01'),
    datePoliceUK = datePoliceUK %>% as.Date(format = "%Y-%m-%d")
  )

## id 

police_df_out <-
  police_df_out %>%
  mutate(
    idPoliceUK = 1:nrow(police_df_out)
  )

saveRDS(
  police_df_out,
  file = 'saved cleaned data/makeFile03 policeUk data.rds'
)

## save space
rm(police_df_out)
