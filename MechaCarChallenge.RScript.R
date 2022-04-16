library(dplyr)

mechaCar_data <- read.csv('MechaCar_mpg.csv') #import dataset

# Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data )
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data )) #generate summary statistics
# p-value: 5.35e-11 : R-squared:  0.7149

# Read in the Suspension Coil file
suspension_coil <- read.csv('Suspension_Coil.csv') #import dataset

# R Script for Total Summary
total_summary <- suspension_coil %>% 
  summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table 


# R Script for Lot Summary
lot_summary <- suspension_coil %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table 

