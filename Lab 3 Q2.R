#Amber Poteet Lab 3: Normal Probability Distribution
#Question 2
rm(list=ls())

u<- 100
o2<-400
o<- sqrt(o2)

#prob density for a lenght of 75 cm
dnorm(75,u,o)
#prob that a lizard will be less than or equal to 75 cm
pnorm(75,u,o)
#greater than 120 cm
1-pnorm(120,u,o)
#between 95 cm and 115 cm
pnorm(115,u,o)-pnorm(95,u,o)
#at least 40 cm different from the mean
less<-pnorm(u-40,u,o)
more<-1-pnorm(u+40,u,o)
less+more
#closer than 1.3 o to the mean
pnorm(u-1.3*o,u,o)+pnorm(u-1.3*o,u,o)
#further than 1.5o from the mean
pnorm(u+1.5,u,o)
#further than 0.7o below the mean
1-pnorm(u-0.7,u,o)

#quartiles of the distribution 25%,50%.75%
qnorm(0.25,u,o)
qnorm(0.5,u,o)
qnorm(0.75,u,o)

#2/3 of observation lie below what value?
qnorm(2/3,u,o)
#80% of observations are expected to lie about what value
qnorm(0.80,u,o)
