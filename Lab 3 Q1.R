#Amber Poteet Lab 3: Normal Probability Distribution
#Question 1
rm(list=ls())

u<- 100
o2<-400
o<- sqrt(o2)

#set q values
q<-seq(u-4*o,u+4*o,by=0.1)

#find values for pdf and plot
pdf<-dnorm(q,u,o)
plot(pdf~q,xlab="Length of Lizards (cm)",ylab= "Probability Density",main="PDF of Lizard Lengths",type="l")

#find values for cdf and plot
cdf<-pnorm(q,u,o)
plot(cdf~q, xlab="Length of Lizards (cm)",ylab= "Probability",main="CDF of Lizard Lengths",type="l")
