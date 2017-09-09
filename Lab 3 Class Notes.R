#Lab 3: Normal Distributions
#Class Notes
#continuous distribution
#three main functions
dnorm()
pnorm()
qnorm()

#hummingbird data of time spend at feeder
u<-30 #mean
o2<-100 #variance
o<- sqrt(o2) #standard deviation

#using dnorm, get probability density, get y value
dnorm(10,u,o)

#using pnorm, get probability, area under the curve, uses an integral
pnorm(10,u,o)

#give probability and get value back, quantile, get x value
qnorm(0.25,u,o)

#get value back q and p are finding each other
p<-pnorm(10,u,o)
qnorm(p,u,o)
q<-qnorm(0.25,u,o)
pnorm(q,u,o)

####################
#making a pdf, infinite number of possibilities
#using seq command to make plot, need lots of points
q<-seq(u-4*o,u+4*o,by=0.1)
q_bad<-seq(u-4*o,u+4*o,by=5)

#use the q to make the pdf
pdf<-dnorm(q,u,o)
pdf_bad<-dnorm(q_bad,u,o)

#making pdf plot
plot(pdf~q)
plot(pdf_bad~q_bad)

#plotting lines instead of points
plot(pdf~q,type="l") #lower case l not 1

#making a cdf
cdf<-pnorm(q,u,o)
plot(cdf~q, type="l")

#y axis is probability in cdf but it is probability density in PDF

#######################
#adding lines to a plot, Q3

#second population of hummingbirds
second_u<-20
second_o2<-150
second_o<-sqrt(second_o2)
#create pdf for this pop
second_pdf<-dnorm(q,second_u,second_o)

#making the plot with 2 lines
plot(pdf~q,type="l")
lines(second_pdf~q, col="red")

#difference, have to adjust ylim
#adjusting the x and y lim based on data (not what you select)
xrange<-range(q)
yrange<-range(pdf,second_pdf)

plot(pdf~q,type="l",xlim=xrange,ylim=yrange)
lines(second_pdf~q, col="red")

#adding a legand to plot, lty- line, bty- no borders
legend("topright",legend = c("u=30, o2=100","u=20, o2=150"),col=c("black","red"),lty = 1,bty = "n")

#####################################
#standard normal curve
#mean of 0, standard deviation of 1, shortcut
pnorm(1)
qnorm(0.25)

#draw a picture if you get stuck
#legend details
#1st argument= location of legend
#2nd argument= what you want the legend to say
#3rd argument= colors of lines/points in legend
#4th argument= line type
#5th argument= legend border ("n"= no border)









