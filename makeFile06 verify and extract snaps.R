## makeFile06 recreate policeUK snaps


# input -------------------------------------------------------------------

policeUK_df <- 
  readRDS(
  file = 'saved cleaned data/makeFile03 policeUk data.rds'
  )


# code --------------------------------------------------------------------

## Get snaps and create a version variable for snaps based on analysis in makeFile02
policeUK_df <-
  policeUK_df %>%
  mutate(
    snapVersion = 
      ifelse(
        policeUK_df$datePoliceUK < as.Date("2012-01-01", format = "%Y-%m-%d"), 1, 2
      )
  )

## Now create snaps
snapsByVersion <-
  policeUK_df %>%
  group_by(snapVersion, snap_x0, snap_y0) %>%
  summarise(
    n = n()
  ) %>% 
  as.data.frame

snapsByVersion <-
  snapsByVersion %>%
  mutate(
    idSnap = 1:nrow(snapsByVersion)
  )


# check and verify --------------------------------------------------------


## Check number of snaps in use

snapsByVersion
snapsByVersion %>%
  group_by(snapVersion) %>%
  summarise(
    n = n()
  )

## Checks what were in use


# output ------------------------------------------------------------------

snapsByVersion %>%
  saveRDS('saved cleaned data/makeFile06 snaps.rds')
