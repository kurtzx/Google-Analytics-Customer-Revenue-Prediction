library(jsonlite)
library(dplyr)
library(purrr)
library(tidyr)
raw_data <- read.csv("Raw Data/train.csv", stringsAsFactors = FALSE)
#device
df_device <- raw_data %>%
  select(fullVisitorId, device)
df_device_p <- df_device %>% 
  mutate(device = map(device, ~ fromJSON(.) %>% as.data.frame())) %>% 
  unnest(device)
saveRDS(df_device_p, file="df_device_p.rds")
#geoNetwork
df_network <- raw_data %>%
  select(fullVisitorId, geoNetwork)
df_network_p <- df_network %>% 
  mutate(geoNetwork = map(geoNetwork, ~ fromJSON(.) %>% as.data.frame())) %>% 
  unnest(geoNetwork)
#totals
df_totals <- raw_data %>%
  select(fullVisitorId, totals)
df_totals_p <- df_totals %>% 
  mutate(totals = map(totals, ~ fromJSON(.) %>% as.data.frame())) %>% 
  unnest(totals)
#trafficSource
df_traffic <- raw_data %>%
  select(fullVisitorId, trafficSource)
df_traffic_p <- df_traffic %>% 
  mutate(trafficSource = map(trafficSource, ~ fromJSON(.) %>% as.data.frame())) %>% 
  unnest(trafficSource)
