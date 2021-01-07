## Define a bird:
myBird = Bird(
name = "White Ibis",
name.scientific = "E. Albus",
massTotal = 1.2, # (kg) total body mass
wingSpan = 0.6575267764367253*2, # (m) maximum wing span IBIS 
wingArea = 0.08742859283708734*2, # (m2) maximum wing area IBIS 
type = "other"
)
## define a speed range
speedrange <- seq(0,22,length.out=20)
## compute aerodynamic power for that speed range:
Paero <- computeFlappingPower(myBird,speedrange)
print(Paero[c("speed","power","frequency","strokeplane")])

flightperf <- computeFlightPerformance(myBird)
flightperf
powercurve <- flightperf$powercurve
plot(flightperf,symbol.speed="U")

plot(powercurve$speed,powercurve$power.aero,xlab=NA,ylab=NA,type='b',xlim=c(0,22),ylim=c(0,40))


#flightperf$table[,grep('^Dnf.',names(flightperf$table))]
#par(mar=c(3.1,3.1,0.4,1.1),mgp=c(1.9,.7,0),cex=0.75)
#with(powercurve , plot( speed, kD.ind*Dnf.ind*speed, type='b', col='red3', 
#                       xlab=NA, ylab=NA, xlim=c(0,22), ylim=c(0.0,30)))
#with(powercurve , lines( speed, kD.pro0*Dnf.pro0*speed, type='b', col='green3'))
#with(powercurve , lines( speed, kD.pro2*Dnf.pro2*speed, type='b', col='blue3'))
#with(powercurve , lines( speed, Dnf.par*speed, type='b', col='yellow3'))
#with(powercurve , lines( speed, (Dnf.par+Dnf.pro2+Dnf.ind+Dnf.pro0)*speed, type='b', col='gray3'))
#mtext(side = 1, line = 2,'Airspeed (m/s)')
#mtext(side = 2, line = 2,'Power (W)')

