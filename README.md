# MechaCar_Statistical_Analysis

### Overview

Using R Studio, two datasets were examined in relation to the "MechaCar", a new prototype automobile. The first dataset examines the miles per gallon in relation to the vehicle design. The second dataset examines the PSI values across three different manufacturing lots, in order to determine if there are any inconsistencies between the lots.

## Linear Regression to Predict MPG

![linear_mpg](https://user-images.githubusercontent.com/77767984/128565769-3d0cdb47-4d79-4d03-98bd-064db6d38f84.png)

From the multiple linear regression model, we can see that Vehicle Length and Ground Clearance have an impact on the miles per gallon of each vehicle. By looking at the adjusted R squared value, nearly 69% of the data fits the model, which may or may not provide a confident analysis depending on opinion.

## Summary Statistics on Suspension Coils

Total summary between all manufacturing lots

![totalsummary](https://user-images.githubusercontent.com/77767984/128565889-9c40bc1b-d5e6-4cc1-ab50-e9e1f479e715.png)

Below is the summary for each respective manufacturing lot

![lotsummary](https://user-images.githubusercontent.com/77767984/128565913-a900aae4-0540-4adb-b3ae-376f086f5bbd.png)

Below are the t tests for each manufacturing lot. For Lots 1 and 2, the p value can be examined to determine that we fail to reject the null-hypothesis and conclude that the PSI means are not statistically different from the population as a whole. However, for lot 3 the p value is 0.0417, which means we can reject the null-hypothesis, thus showing that further investigation is required into lot 3 to determine what is causing the discrepencies.

![ttest1](https://user-images.githubusercontent.com/77767984/128565929-b344741a-58c7-4906-af66-f022800231c2.PNG)

![ttest2](https://user-images.githubusercontent.com/77767984/128565948-90f7d661-a51d-478f-af5f-4b46115aa39a.PNG)

![ttest3](https://user-images.githubusercontent.com/77767984/128565972-ff0be2a3-21d7-4b31-8b07-d5296690aaf8.PNG)

![ttest4](https://user-images.githubusercontent.com/77767984/128565984-2032d24d-f311-4a9b-9947-e92c62f72ddf.PNG)







## Study Design: MechaCar vs Competition

Firstly, a final prototype will have to be designed, built, and approved for road use. It would then have to be compared to a vehicle in a similar class from a competitor. MechaCar should evaluate what design gives the best MPG, while factoring in other things such as safety and consumer appeal. The discrepencies in lot 3 would need to be investigated and resolved as well, to ensure that each vehicle is being built to design standard, regardless of where it is manufactured at. Statistics such as MPG, miles driven per day or week, maintenance issues, etc. could be pulled from both the MechaCar and the competitor, and then be analyzed to determine which one had more success overall.
