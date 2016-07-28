# library(gtools)
# # posterior weights are about prior variability.
# # Agreement. exp1<-c(5,5,5) exp2<-c(50,50,50) data<-c(50,50,50) or data<-c(5,5,5)
#
# # Agreement. exp1<-c(1,5,9) exp2<-c(10,50,90) data<-c(1,5,9) or data<-c(10,50,90)
#
# # Mild disagreement. exp1<-c(1,5,9) exp2<-c(5,5,5) Similar uncertainty data<-c(5,5,5) or data<-c(1,5,9)
#
# # Mild disagreement. exp1<-c(1,5,9) exp2<-c(5,5,5) Strong disagreement with data. Similar uncertainty data<-c(9,5,1)
#
# # Disagreement. exp1<-c(1,5,9) exp2<-c(50,50,50) Strong disagreement with data. data<-c(9,5,1)
#
# # Disagreement.
# exp1<-c(1,5,9)
# exp2<-c(90,50,10) #Different uncertainty. certain agrees with data.
# data<-c(5,5,5)
#
# # Disagreement. exp1<-c(1,5,9) exp2<-c(90,50,10) Different uncertainty. Uncertain agrees with data. data<-c(1,5,9)
#
# # exp1<-c(1,5,9)
# # exp2<-c(50,50,50)
#
# #data<-c(10,50,100)
# # data<-c(1,5,9)
# #data<-c(20,40,60)
#
# k1<-0.5
# k2<-0.5
#
# #c1<-gamma(sum(exp1+data))/prod(gamma(exp1+data))
# #c2<-gamma(sum(exp2+data))/prod(gamma(exp2+data))
#
# logc1pr<-lgamma(sum(exp1))-sum(lgamma(exp1))
# logc2pr<-lgamma(sum(exp2))-sum(lgamma(exp2))
# logc1pos<-lgamma(sum(exp1+data))-sum(lgamma(exp1+data))
# logc2pos<-lgamma(sum(exp2+data))-sum(lgamma(exp2+data))
# logc1<-logc1pr-logc1pos
# logc2<-logc2pr-logc2pos
# c1<-exp(logc1)
# c2<-exp(logc2)
# k1post<-k1*c1/(k1*c1+k2*c2)
# k2post<-k2*c2/(k1*c1+k2*c2)
# #######################################################################################
# prdirsample <- rdirichlet(10000, c(1,1,1))
# for (i in 1:10000) {
#   rr<-runif(1,0,1)
#   if (rr<k1){
#     prdirsample[i,] <- rdirichlet(1, exp1) #needs package gtools
#   }
#   if (rr>=k1){
#     prdirsample[i,] <- rdirichlet(1, exp2)
#   }
# }
# par(mfrow=c(6,1))
# for (i in 1:3){
#   hist(prdirsample[,i], xlim = c(0, 1))
# }
# #######################################################################################
# posdirsample <- rdirichlet(10000, c(1,1,1))
# for (i in 1:10000) {
#   rr<-runif(1,0,1)
#   if (rr<k1post){
#     posdirsample[i,] <- rdirichlet(1, exp1+data) #needs package gtools
#   }
#   if (rr>=k1post){
#     posdirsample[i,] <- rdirichlet(1, exp2+data)
#   }
# }
# for (i in 1:3){
#   hist(posdirsample[,i], xlim = c(0, 1))
# }
# k1post
# k2post
