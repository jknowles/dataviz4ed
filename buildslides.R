# Build the slides
# 12-7-2012

# Use slidify
# need to install it

library(devtools)
install_github("devtools", "hadley")
install_github("slidify", "ramnathv")
install_github("slidifyLibraries", "ramnathv")
install_github("knitr", "yihui")
install_github("whisker", "edwindj")
install_github("markdown", "rstudio")
install_github("ggthemes", "jrnold")

library(slidify)
#author("dataviz4ed")

slidify(inputFile="index.Rmd")
