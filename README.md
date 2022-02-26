## Linear Regression to Predict MPG

I was tasked with identifying metrics that predict mpg of MechaCar prototypes, including vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD.  To answer this question, I conducted a linear regression using RStudio.  

-	The variables that provide a non-random amount of variance to mpg are ground_clearance and vehicle_length.

-	The slope of the multiple linear regression was nonzero because ground_clearance and vehicle_length were found to be statistically unlikely to provide random amounts of variance to the linear model.  In other words, these metrics had a significant impact on mpg of MechaCar prototypes.  

![Figure 2: Linear Regression to Predict MPG](https://github.com/AMHembrough/MechaCar_Statistical_Analysis/blob/main/Figure%201.PNG)

-	Yes, the linear model does predict mpg of MechaCar prototypes effectively because the multiple R-squared value is 0.7149, meaning that the linear model predicts mpg at a rate of 71%.  

## Summary Statistics on Suspension Coils

The design specifications for MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  If we consider all manufacturing lots collectively, the current manufacturing data do meet this specification as the variance is slightly above 62 pound per square inch.  

![Figure 2: Summary Stats of All Lots MPG]( https://github.com/AMHembrough/MechaCar_Statistical_Analysis/blob/main/Figure%202.PNG)

If we examine the lots individually, not all lots meet the design specifications.  Specifically, lots 1 and 2 meet the requirements because the variance of the suspension coils are <1 and 7 pounds per square inch, respectively.  However, manufacturing lot 3 has a variance of more than 170 pounds per square inch.  

![Figure 2: Summary Stats of Individual Lots MPG]( https://github.com/AMHembrough/MechaCar_Statistical_Analysis/blob/main/Figure%203.PNG)

## T-tests on Suspension Coils

The PSI across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch, as denoted by a p value of 0.06028.

![Figure 4: T-Test Across All Manufacturing Lots](https://github.com/AMHembrough/MechaCar_Statistical_Analysis/blob/main/Figure4.PNG)

When we look at the manufacturing lots separately, we see that while lots 1 and 2 are not statistically different from the population mean of 1,500 pounds per square inch (p = 1 and p + 0.6072, respectively), lot 3 is based on a p value of 0.04168.

![Figure 5: T-Test by Manufacturing Lot](https://github.com/AMHembrough/MechaCar_Statistical_Analysis/commit/0eba987242189167b11b3852fbc957ebae29f1ef)

## Study Design: MechaCar vs Competition

To compare the performance of MechaCar vehicles against the performance of vehicles from other manufactures, I would conduct a t-test of to see if MechaCar prototypes differs from other manufacturer’ prototypes.  I would use this statistical test because it allows me to compare the mean of one dataset to another under a few assumptions.  

I would examine metrics like cost, fuel efficiency, horse power, and safety.  

The hypotheses are as follows :
-	H0 : There is no statistical difference between the MechaCar prototype metric means and other manufacturers’.
-	Ha : There is a statistical difference between the MechaCar prototype metric means and other manufacturers’.

I would need to obtain an in-house dataset with Mechacar prototype data including cost, fuel efficiency, horse power, and safety.  Likewise, I would need to use the internet to find a comparable, current dataset for other manufacturers.  
