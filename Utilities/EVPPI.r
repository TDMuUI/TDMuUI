install.packages("Rfast")
library("Rfast")

n <- 10000

td2.s1 <- runif(n,9279,11191)
td2.s2 <- runif(n,6881,21724)
td2.s3 <- runif(n,4499,14193)

td5.s1 <- runif(n,6881,10533)
td5.s2 <- runif(n,4499,14193)
td5.s3 <- runif(n,4780,11191)

td14.s1 <- runif(n,4780,6881)
td14.s2 <- runif(n,4499,10533)
td14.s3 <- runif(n,4499,7311)

wtp <- 1

s1.nbs <- cbind((td2.s1+td5.s1+td14.s1)*wtp)
s2.nbs <- cbind((td2.s2+td5.s2+td14.s2)*wtp)
s3.nbs <- cbind((td2.s3+td5.s3+td14.s3)*wtp)

s_nbs <- cbind(s1.nbs,s2.nbs,s3.nbs)
wtp <- 1

plot(s1.nbs[order(s1.nbs)],type="l",col="blue")
lines(s2.nbs[order(s2.nbs)],type="l",col="red")
lines(s3.nbs[order(s3.nbs)],type="l",col="green")

evppi(td2.s1,s_nbs)
evppi(td2.s2,s_nbs)
evppi(td2.s3,s_nbs)

s1.EVTPI.nbs <- runif(n,20659,28605)
s2.EVTPI.nbs <- runif(n,18691,46450)
s3.EVTPI.nbs <- runif(n,13778,32695)

s1.EVTPI.mean <- sum(s1.EVTPI.nbs)/n
s2.EVTPI.mean <- sum(s2.EVTPI.nbs)/n
s3.EVTPI.mean <- sum(s3.EVTPI.nbs)/n

s.EVTPI <- cbind(s1.EVTPI.nbs,s2.EVTPI.nbs,s3.EVTPI.nbs)
s.EVTPI.max <- rowMaxs(s.EVTPI,value = TRUE)
s.EVTPI.max.mean <- sum(s.EVTPI.max)/n

#Segmentation Visualiser
plot(td5.s1[order(td5.s1)],type="l",col="blue")
lines(td5.s2[order(td5.s2)],type="l",col="red")
lines(td5.s3[order(td5.s3)],type="l",col="green")

plot(td2.s1[order(td2.s1)],type="l",col="blue")
lines(td2.s2[order(td2.s2)],type="l",col="red")
lines(td2.s3[order(td2.s3)],type="l",col="green")

plot(td14.s1[order(td14.s1)],type="l",col="blue")
lines(td14.s2[order(td14.s2)],type="l",col="red")
lines(td14.s3[order(td14.s3)],type="l",col="green")