
> setwd("C:/Users/marco_001/OneDrive/UNIMIB - Data Science/Project/DataVisualization2021")
> mental <- read.csv("mental_score_SF12.csv", header = T)
> model <- lm(score_postop ~ score_preop + condizioni_meteo + sesso + anni_ricovero + temperatura_media + umidita_media + HI...27 + natural_light, data=mental)
> summary(model)

Call:
lm(formula = score_postop ~ score_preop + condizioni_meteo + 
    sesso + anni_ricovero + temperatura_media + umidita_media + 
    HI...27 + natural_light, data = mental)

Residuals:
    Min      1Q  Median      3Q     Max 
-32.592  -5.984   2.161   6.708  21.420 

Coefficients:
                                                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)                                      35.325400   5.760099   6.133 1.23e-09 ***
score_preop                                       0.290616   0.025653  11.329  < 2e-16 ***
condizioni_meteonebbia                            1.774447   5.769955   0.308   0.7585    
condizioni_meteonebbia al mattino                -1.541019   4.457703  -0.346   0.7296    
condizioni_meteoneve                             -7.871245   6.587425  -1.195   0.2324    
condizioni_meteoneve debole                      10.504270  10.719699   0.980   0.3274    
condizioni_meteoneve e schiarite                 -0.194508   6.580935  -0.030   0.9764    
condizioni_meteonubi sparse                       2.059973   4.671110   0.441   0.6593    
condizioni_meteopioggia                          -6.961737   5.727950  -1.215   0.2245    
condizioni_meteopioggia debole                   -3.337104   4.601584  -0.725   0.4685    
condizioni_meteopioggia e schiarite              -2.698997   4.428370  -0.609   0.5423    
condizioni_meteopioggia mista a neve e schiarite  1.245777  10.701977   0.116   0.9074    
condizioni_meteopoco nuvoloso                    -2.170941   4.432366  -0.490   0.6244    
condizioni_meteosereno                           -1.261664   4.477812  -0.282   0.7782    
condizioni_meteosole e caldo                     -4.953335   4.720859  -1.049   0.2943    
condizioni_meteotemporale e schiarite            -5.608271   4.968715  -1.129   0.2593    
sessoM                                            1.610141   0.643470   2.502   0.0125 *  
anni_ricovero                                    -0.007678   0.028558  -0.269   0.7881    
temperatura_media                                 0.119093   0.067712   1.759   0.0789 .  
umidita_media                                     0.022919   0.027521   0.833   0.4052    
HI...27True                                      -0.010651   1.323180  -0.008   0.9936    
natural_lightTrue                                 1.012134   0.967665   1.046   0.2958    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 9.745 on 1033 degrees of freedom
Multiple R-squared:  0.1527,	Adjusted R-squared:  0.1355 
F-statistic: 8.864 on 21 and 1033 DF,  p-value: < 2.2e-16

> model <- lm(score_postop ~ score_preop + sesso + anni_ricovero + temperatura_media + umidita_media + HI...27 + natural_light, data=mental)
> summary(model)

Call:
lm(formula = score_postop ~ score_preop + sesso + anni_ricovero + 
    temperatura_media + umidita_media + HI...27 + natural_light, 
    data = mental)

Residuals:
    Min      1Q  Median      3Q     Max 
-32.847  -6.118   2.296   6.794  21.403 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)       35.086880   3.138372  11.180   <2e-16 ***
score_preop        0.293915   0.025547  11.505   <2e-16 ***
sessoM             1.644493   0.640415   2.568   0.0104 *  
anni_ricovero     -0.009439   0.028418  -0.332   0.7398    
temperatura_media  0.075041   0.063266   1.186   0.2358    
umidita_media      0.004947   0.020815   0.238   0.8122    
HI...27True       -0.612148   1.232053  -0.497   0.6194    
natural_lightTrue  1.087099   0.964266   1.127   0.2598    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 9.773 on 1047 degrees of freedom
Multiple R-squared:  0.1363,	Adjusted R-squared:  0.1305 
F-statistic:  23.6 on 7 and 1047 DF,  p-value: < 2.2e-16

> model <- lm(score_postop ~ score_preop + sesso + temperatura_media + umidita_media + HI...27 + natural_light, data=mental)
> summary(model)

Call:
lm(formula = score_postop ~ score_preop + sesso + temperatura_media + 
    umidita_media + HI...27 + natural_light, data = mental)

Residuals:
    Min      1Q  Median      3Q     Max 
-32.855  -6.103   2.341   6.817  21.384 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)       34.414992   2.398406  14.349  < 2e-16 ***
score_preop        0.294211   0.025521  11.528  < 2e-16 ***
sessoM             1.678348   0.631982   2.656  0.00803 ** 
temperatura_media  0.075854   0.063192   1.200  0.23026    
umidita_media      0.004846   0.020804   0.233  0.81584    
HI...27True       -0.614820   1.231503  -0.499  0.61771    
natural_lightTrue  1.083917   0.963809   1.125  0.26101    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 9.769 on 1048 degrees of freedom
Multiple R-squared:  0.1362,	Adjusted R-squared:  0.1312 
F-statistic: 27.53 on 6 and 1048 DF,  p-value: < 2.2e-16

> model <- lm(score_postop ~ score_preop + sesso + umidita_media + HI...27 + natural_light, data=mental)
> summary(model)

Call:
lm(formula = score_postop ~ score_preop + sesso + umidita_media + 
    HI...27 + natural_light, data = mental)

Residuals:
    Min      1Q  Median      3Q     Max 
-32.825  -6.095   2.264   6.877  21.787 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)       35.704878   2.144665  16.648  < 2e-16 ***
score_preop        0.292118   0.025466  11.471  < 2e-16 ***
sessoM             1.664401   0.632008   2.634  0.00858 ** 
umidita_media     -0.003392   0.019643  -0.173  0.86294    
HI...27True        0.479702   0.827938   0.579  0.56245    
natural_lightTrue  1.266892   0.951879   1.331  0.18350    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 9.771 on 1049 degrees of freedom
Multiple R-squared:  0.135,	Adjusted R-squared:  0.1309 
F-statistic: 32.74 on 5 and 1049 DF,  p-value: < 2.2e-16

> model <- lm(score_postop ~ score_preop + sesso + HI...27 + natural_light, data=mental)
> summary(model)

Call:
lm(formula = score_postop ~ score_preop + sesso + HI...27 + natural_light, 
    data = mental)

Residuals:
    Min      1Q  Median      3Q     Max 
-32.894  -6.126   2.280   6.843  21.766 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)       35.44297    1.51560  23.385  < 2e-16 ***
score_preop        0.29217    0.02545  11.479  < 2e-16 ***
sessoM             1.66592    0.63165   2.637  0.00848 ** 
HI...27True        0.52428    0.78629   0.667  0.50506    
natural_lightTrue  1.27326    0.95073   1.339  0.18078    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 9.767 on 1050 degrees of freedom
Multiple R-squared:  0.135,	Adjusted R-squared:  0.1317 
F-statistic: 40.95 on 4 and 1050 DF,  p-value: < 2.2e-16

> model <- lm(score_postop ~ score_preop + sesso + natural_light, data=mental)
> 7summary(model)
Errore: unexpected symbol in "7summary"
> summary(model)

Call:
lm(formula = score_postop ~ score_preop + sesso + natural_light, 
    data = mental)

Residuals:
    Min      1Q  Median      3Q     Max 
-32.998  -6.180   2.215   6.909  21.668 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)       35.45921    1.51501  23.405  < 2e-16 ***
score_preop        0.29243    0.02544  11.493  < 2e-16 ***
sessoM             1.66908    0.63147   2.643  0.00834 ** 
natural_lightTrue  1.34623    0.94416   1.426  0.15421    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 9.764 on 1051 degrees of freedom
Multiple R-squared:  0.1346,	Adjusted R-squared:  0.1321 
F-statistic: 54.48 on 3 and 1051 DF,  p-value: < 2.2e-16

> model <- lm(score_postop ~ score_preop + sesso, data=mental)
> summary(model)

Call:
lm(formula = score_postop ~ score_preop + sesso, data = mental)

Residuals:
    Min      1Q  Median      3Q     Max 
-32.825  -6.155   2.144   6.931  21.822 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 36.68188    1.24959  29.355  < 2e-16 ***
score_preop  0.29153    0.02545  11.456  < 2e-16 ***
sessoM       1.70173    0.63136   2.695  0.00714 ** 
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 9.769 on 1052 degrees of freedom
Multiple R-squared:  0.1329,	Adjusted R-squared:  0.1313 
F-statistic: 80.63 on 2 and 1052 DF,  p-value: < 2.2e-16

> plot(model$residuals)
> qqnorm(model$residuals)
> shapiro.test(model$residuals)

	Shapiro-Wilk normality test

data:  model$residuals
W = 0.96158, p-value = 4.794e-16
