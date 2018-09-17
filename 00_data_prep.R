#library(data.table)
raw_data <- read.csv("Raw Data/train.csv", stringsAsFactors = FALSE)

library(jsonlite)
library(dplyr)
library(purrr)
library(tidyr)


df_device <- raw_data %>%
  select(fullVisitorId, device)
df_device_p <- df_device %>% 
  mutate(device = map(device, ~ fromJSON(.) %>% as.data.frame())) %>% 
  unnest(device)
