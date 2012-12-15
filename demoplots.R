# Demo plots

# Prepare plots in R for inclusion

library(ggplot2)
library(eeptools)
load("data/smalldata.rda")

names(df)
# Hexbin
dfbig<-rbind(df,df)
dfbig<-rbind(dfbig,dfbig)
qplot(readSS,mathSS,data=dfbig,geom='hex',bins=40)+theme_dpi()+geom_smooth()+
  theme(legend.position="none")+labs(title="Reading and Math \n Performance",
                                     x="Read Scale Score",y="Math Scale Score")
# Alpha
qplot(readSS,mathSS,data=df,alpha=I(0.5))+theme_dpi()+geom_smooth()+
  theme(legend.position="none")+labs(title="Reading and Math \n Performance",
                                     x="Read Scale Score",y="Math Scale Score")

qplot(readSS,mathSS,data=df)+theme_dpi()+geom_smooth()+
  theme(legend.position="none")+labs(title="Reading and Math \n Performance",
                                     x="Read Scale Score",y="Math Scale Score")

rnormcor <- function(x,rho) rnorm(1,rho*x,sqrt(1-rho^2))

myx<-rnorm(100000,500,60)
myy<-sapply(myx,rnormcor,rho=0.4)
myy<-myy+rnorm(100000,50,40)
qplot(myx,myy,alpha=I(0.05))+theme_dpi()
