require(openintro)
require(oibiostat)
data(famuss)
###data(COL)

myPDF('famussPieChart.pdf' ,
     # 3, ###7,
      #3,
      mar = c(0, 0, 0, 0)
      #mgp = c(3.4, 0.7, 0)
      )
t <- table(famuss$actn3.r577x)
pie(t)

dev.off()
