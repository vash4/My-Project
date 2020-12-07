library("covid19.analytics")
df<-covid19.data(case = "aggregated")
df
tsc<-covid19.data(case = "ts-confirmed")
tsc
tsa<-covid19.data(case ="ts-All")
tsa
#summary(no of entries)
report.summary(Nentries = 10,graphical.output = T)
#total per location
tots.per.location(tsc,geo.loc="US", "india")
# growth rate
growth.rate(tsc,geo.loc = "US")
#total plot
totals.plt(tsa,c("India"))
#word map
live.map(tsc)
#sIR model(sub infection ,Recover)
generate.SIR.model(tsc, "india",tot.population = 1,380,004,385 )
  
