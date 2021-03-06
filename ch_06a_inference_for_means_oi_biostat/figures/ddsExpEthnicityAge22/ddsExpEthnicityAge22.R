library(openintro)
library(oibiostat)
data(dds.discr)
data(COL)

dds.hispanics = dds.discr[dds.discr$ethnicity == "Hispanic", ]
dds.white.non.hisp = dds.discr[dds.discr$ethnicity == "White not Hispanic", ]

dds.hisp.white = rbind(dds.hispanics, dds.white.non.hisp)
dds.hisp.white$ethnicity <- droplevels(dds.hisp.white$ethnicity)

dt.22 = subset(dds.hisp.white, age.cohort == "22-50", 
               select = c(ethnicity, expenditures))


myPDF("ddsExpEthnicityAge22.pdf", 6, 5,
      mar = c(4.5, 5, 1, 0.5),
      mgp = c(3.2, 0.5, 0),
)

boxPlot(dt.22$expenditures, dt.22$ethnicity,
        xlab = 'Ethnicity',
        ylab = 'Expenditures (USD)',
        ylim = c(0, 60000),
        pch = 19,
        pchCex = 1,
        lcol = COL[1],
        col = COL[1,3])

dev.off()
