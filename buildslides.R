# Build the slides
# 12-7-2012

# Use slidify
# need to install it

library(devtools)
dev_mode(path="C:/R/lib/dev")

# install_github("hadley/devtools")
# install_github("ramnathv/slidify")
# install_github("ramnathv/slidifyLibraries")
# install_github("yihui/knitr")
# install_github("edwindj/whisker")
# install_github("rstudio/markdown")
# install_github("jrnold/ggthemes")

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



slidify(inputFile="dataviz4ed2014.Rmd")


slidify(inputFile="RAgathering2014.rmd")
