library(dplyr)

mechaCar_df <- read.csv('MechaCar_mpg.csv')
mpg_reg <- lm(formula= mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar_df)
summary(mpg_reg)

suspensionCoil_tbl <- read.csv('Suspension_Coil.csv')
total_summary <- summarize(suspensionCoil_tbl, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- suspensionCoil_tbl %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

all_lots <- t.test(suspensionCoil_tbl$PSI, mu = 1500)
all_lots
paste('The p-value for all lots is: ',round(all_lots$p.value,4))

lot1 <- subset(suspensionCoil_tbl, Manufacturing_Lot == 'Lot1')
lot2 <- subset(suspensionCoil_tbl, Manufacturing_Lot == 'Lot2')
lot3 <- subset(suspensionCoil_tbl, Manufacturing_Lot == 'Lot3')

lot1_ttest <- t.test(lot1$PSI, mu = 1500)
lot1_ttest
lot2_ttest <- t.test(lot2$PSI, mu = 1500)
lot2_ttest
lot3_ttest <- t.test(lot3$PSI, mu = 1500)
lot3_ttest

paste('The p-value for lot 1 is:', round(lot1_ttest$p.value,4), 'The p-value for lot 2 is:', round(lot2_ttest$p.value,4), 'The p-value for lot 3 is:',round(lot3_ttest$p.value,4))