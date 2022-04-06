library(tidyverse)
library(skimr)
library(lubridate)
library(ggplot2)
library(janitor)
library(scales)
library(RColorBrewer)


# upload data 

property <- read_csv('/Volumes/Pud SSD/GitHub Projects/real_estate_analysis/Resources/property.csv')
user_activity <- read_csv('/Volumes/Pud SSD/GitHub Projects/real_estate_analysis/Resources/user_activity.csv')
dim(property)
glimpse(property)
summary(property)


summary(user_activity)

# check unique ID / houses 
n_distinct(property$item_id)

# check unique user ID

n_distinct(user_activity$user_id)

# replace NA value with 0
property$building_floor_count[is.na(property$building_floor_count)] <- 0
property$deposit[is.na(property$deposit)] <-  0
property$room_qty[is.na(property$room_qty)] <- 0
property$unit_floor[is.na(property$unit_floor)] <- 0

summary(property)

# merge property with users activity

property_user <- merge(property, user_activity, by = c("item_id"))

# statistical summary of the data 

property %>%
  select(deposit, monthly_rent, room_qty, unit_area, has_elevator, building_floor_count, unit_floor, property_age) %>%
  summary()

#  count property

property_count <- property_user %>%
  group_by(user_id) %>%
  summarize(item_id = sum(n()))

property_count


# find correlation
# Create the linear regression model

lmMonthly = lm(monthly_rent~room_qty+deposit+has_elevator+property_age, data = property) 

summary(lmMonthly)

# confidence interval 

confint(lmMonthly)


# plot

ggplot(data=property, aes(x=room_qty, y= property_age)) + geom_point(color = "blue") + geom_smooth() + labs(title =  'Room Quantity Vs. Property Age')

ggplot(data=property, aes(x=has_elevator, y= property_age)) + geom_point(color = "blue") + geom_smooth() + labs(title =  'Elevator Vs. Property Age' )

ggplot(data = property, aes(x=room_qty , y = monthly_rent )) + geom_point() + labs(title =  'Monthly Rent Vs. Room QTY')





