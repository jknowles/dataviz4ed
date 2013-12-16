# Build the slides
# 12-7-2012

# Use slidify
# need to install it

library(devtools)
dev_mode(path="C:/R/lib/dev")

# install_github("devtools", "hadley")
# install_github("slidify", "ramnathv")
# install_github("slidifyLibraries", "ramnathv")
# install_github("knitr", "yihui")
# install_github("whisker", "edwindj")
# install_github("markdown", "rstudio")
# install_github("ggthemes", "jrnold")
library(slidify)
library(whisker)
library(markdown)
library(slidifyLibraries)
library(knitr)
library(eeptools)
library(ggplot2)
library(ggthemes)
#author("dataviz4ed")



slidify(inputFile="index.Rmd")

#publish_github("jknowles","Jan2013SDPtalk")

####################
# Authoring files

# restore this image to save time

save.image("data/cache.rda",compress="xz")

# 
load("data/cache.rda")


#######################
# New graphic

slidify(inputFile="EEVAforEducation.Rmd")
