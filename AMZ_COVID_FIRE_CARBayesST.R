library(dplyr)
library(rgdal)
library(sf)
library(psych)
library(CARBayesST)

result_mrg <- read.csv("amz_covid_fire.csv")
result_mrg = result_mrg%>%dplyr::select(state_id, year, country, state, cnt_st, fire_aft, fire_bef, prec, temp, frst_per, crop_per, econtree_per, pop_den, elev, hems, period, treat)

result_mrg[,7:14] <- scale(result_mrg[,7:14])

amz<-st_read(("AMZ_SUB1_DISED/AMZ_SUB1_Pro_dised.shp")[1],quiet=TRUE)

xx <- poly2nb(as(amz, "Spatial"), row.names = amz$state_id)
weighted_neighbors = nb2listw(xx, zero.policy=T)

####weight matrix#####


result_mrg = result_mrg %>% group_by(year) %>% arrange(state_id)

W.list = nb2listw(xx, zero.policy = TRUE)
W = nb2mat(xx, style = "B", zero.policy = TRUE)


formula <- fire_aft ~ treat + fire_bef + prec + temp + frst_per + crop_per + econtree_per + pop_den + hems + elev + period + country

####For reproducibility, please set a seed through: set.seed(***)#######

model <- ST.CARadaptive(formula = formula, family = "poisson", 
                        data = result_mrg, W = W, burnin = 200000, n.sample = 300000,
                        thin =45)

