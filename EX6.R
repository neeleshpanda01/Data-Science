fin<-read.csv(file.choose())
fin

complete.cases(fin)
fin[!complete.cases(fin),]
summary(fin)

fin$Salary==NA


#filtering using is.na()
is.na(fin$Salary)
fin[is.na(fin$Salary),]


#removing the missing record from the csv or dataset
fin_backup<-fin
fin<-fin[!is.na(fin$Salary),]
fin

fin[!complete.cases(fin),]

#median
median(fin[,"Salary"],na.rm=True)
mean(fin[,"Salary"],na.rm=True)

median(fin[fin$Country=="Spain","Salary"],na.rm=True)

# Taking care of missing data
dataset = read.csv(file.choose())
fin$Age = ifelse(is.na(fin$Age),
                     ave(fin$Age, FUN = function(x) mean(x, na.rm=TRUE)),
                     fin$Age)
