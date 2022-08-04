##  preReg2 figures and tables 
## Workflow: Output in whatever source we want and use PACE on Plosone to convert 


# Time series example -----------------------------------------------------
# create fake data 

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



# example its 

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
#    title = "An illustration of an interrupted time series",
    x = 'T (year)',
    y = expression( hat(beta) [t]) #using R's maths
  )



# voronoi example ---------------------------------------------------------

library(sf)
library(tmaptools)

## load in the infered snaps?
theseSnaps <-
  readRDS('saved cleaned data/makeFile06 snaps.rds')

# 1.1. Selection which version of snaps to use 

theseSnaps <-
  theseSnaps %>%
  filter(
    snapVersion == 1
  )

## extract a segement 

theseSnaps<- 
  theseSnaps %>%
  filter(
    snap_x0 %>% 
      dplyr::between(440644 - 250, 440644 + 250) ##median +- a distance
  ) %>%
  filter(
    snap_y0 %>% 
      dplyr::between(394550 - 250, 394550 + 250) ##median +- 
  ) 

## Create coordinates 
theseSnaps <-
  theseSnaps %>%
  mutate(
    id = LETTERS[1:nrow(theseSnaps)]
  ) %>%
  st_as_sf(
    coords = c('snap_x0', 'snap_y0'),
    crs = st_crs(ukgrid)
  )

## Using code from: https://stackoverflow.com/questions/45719790/create-voronoi-polygon-with-simple-feature-in-r
theseVoronoi <-
  theseSnaps %>% 
  st_union %>% 
  st_voronoi %>%
  st_cast



# basemap
library(tmaptools)
library(OpenStreetMap)
tmap_mode('plot')

osm_base <- 
  read_osm(theseSnaps, ext = 1.5)

theseSnaps %>% st_jitter()

set.seed(12345)
tm_shape(osm_base) + tm_rgb(alpha = 0.5) +
tm_shape(theseSnaps) + tm_dots(size = 0.4) + 
tm_shape(theseSnaps[8, ]) + tm_dots(size = 0.4, col = 'red') + 
tm_shape(
  (theseSnaps %>% st_jitter(factor = 0.1))[8,] %>%
           mutate(id = 'A') 
  ) + tm_text('id') + #jitter text
tm_shape(theseVoronoi) + tm_borders() 


## 

