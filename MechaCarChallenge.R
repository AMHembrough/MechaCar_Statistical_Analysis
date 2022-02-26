library(dplyr)
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #generate summary statistics

SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- SuspensionCoil %>% summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups = 'keep') #create summary table
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups = 'keep') #create summary table

t.test(SuspensionCoil$PSI,mu=1500)
t.test(subset(SuspensionCoil$PSI,SuspensionCoil$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(SuspensionCoil$PSI,SuspensionCoil$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(SuspensionCoil$PSI,SuspensionCoil$Manufacturing_Lot=='Lot3'),mu=1500)