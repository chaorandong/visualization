# Assignment3 - Visualization - DSI Doctoral Certificate
# Chaoran Dong
# Date: 2025/05/08

# DINESAFE

# Preparation ####
rm(list = ls())

# Load packages
library(tidyverse)
library(ggplot2)
library(lubridate)
library(ggpattern)

# Load data
dt_dinesafe <- read.csv(file = "Dinesafe.csv", header = T)

glimpse(dt_dinesafe)

# Data exploration
table(dt_dinesafe$Establishment.Type)

# Only keep a few types of establishment
c_type_keep <- c("Food Court Vendor", "Food Store (Convenience/Variety)", "Food Take Out", "Restaurant", "Supermarket")

dt_dinesafe_keep <- dt_dinesafe %>%
  filter(Establishment.Type %in% c_type_keep)

# Extract inspection year
dt_dinesafe_keep$Inspection.Year <- year(ymd(dt_dinesafe_keep$Inspection.Date))

table(dt_dinesafe_keep$Inspection.Year)

# Exploration on the filtered data
summary(dt_dinesafe_keep$Amount.Fined)
table(dt_dinesafe_keep$Severity)

#hist(dt_dinesafe_keep$Amount.Fined)

# Exclude the NAs
dt_dinesafe_keep <- dt_dinesafe_keep %>%
  filter(Severity != "NA - Not Applicable")

# Rename the levels
dt_dinesafe_keep <- dt_dinesafe_keep %>%
  mutate(
    Severity = case_when(
      Severity == "C - Crucial" ~ "Crucial",
      Severity == "M - Minor" ~ "Minor",
      Severity == "S - Significant" ~ "Significant",
      TRUE ~ "No Infractions"
    )
  )

# Relevel the severity
dt_dinesafe_keep$Severity <- factor(dt_dinesafe_keep$Severity,
                                    levels = c("Crucial", "Significant", "Minor", "No Infractions"))

# Rename the establishment type
dt_dinesafe_keep <- dt_dinesafe_keep %>%
  mutate(Establishment.Type = ifelse(Establishment.Type == "Food Store (Convenience/Variety)", "Convenience Store", Establishment.Type))

# Export a cleaned version
dt_dinesafe_keep <- dt_dinesafe_keep %>%
  select(-Establishment.ID, -Establishment.Name, -Establishment.Address, -unique_id)

write.csv(dt_dinesafe_keep, file = "Dinesafe_cleaned.csv",row.names = F)

# Start Plotting ####
# A plot to explore the relationship between establishement type and severity
gg_infraction_establish <- ggplot(dt_dinesafe_keep, aes(x = Establishment.Type, fill = Severity, pattern = Severity)) +
  geom_bar(position = "fill") +
  geom_bar_pattern(position = "fill", 
                   stat = "count",
                   pattern_density = 0.3,
                   pattern_spacing = 0.08,
                   pattern_key_scale_factor = 0.6,
                   pattern_fill = "black",
                   pattern_alpha = 0.4) +
  scale_pattern_manual(values = c(
    "No Infractions" = "circle", 
    "Minor" = "stripe", 
    "Significant" = "crosshatch", 
    "Crucial" = "none"
  )) +
  scale_pattern_spacing_discrete(range = c(0.01,0.05))+
  scale_fill_viridis_d(option = "D") +
  labs(y = "Proportion", x = "Establishment Type", 
       title = "Level of Infraction by Establishment Types",
       caption = "This plot shows the distribution of food safety inspection outcomes across five \ncommon types of food establishments in Toronto.Each bar is divided by severity \nlevel, and the height of each segment reflects the proportion of respective level.") +
  theme_bw() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
    axis.text.x = element_text(angle = 20, hjust = 0.9),
    text = element_text(family = "Helvetica"),
    plot.caption = element_text(hjust = 0.5, size = 8.5, margin = margin(t=10))
  )
gg_infraction_establish

ggsave("gg_infraction_establish.png",width = 10, height = 8, dpi = 300)
