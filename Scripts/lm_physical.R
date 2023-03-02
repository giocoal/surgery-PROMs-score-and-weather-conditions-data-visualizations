> physical <- read.csv("physical_score_SF12.csv", header = T)
> model_physical <- lm(score_postop ~ score_preop + condizioni_meteo + sesso + anni_ricovero + temperatura_media + umidita_media + HI...27 + natural_light, data=physical)
> summary(model_physical)

Call:
lm(formula = score_postop ~ score_preop + condizioni_meteo + 
    sesso + anni_ricovero + temperatura_media + umidita_media + 
    HI...27 + natural_light, data = physical)

Residuals:
     Min       1Q   Median       3Q      Max 
-26.5383  -6.4503   0.0109   7.0834  23.1284 

Coefficients:
                                                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)                                      29.353879   5.146958   5.703 1.53e-08 ***
score_preop                                       0.252672   0.033961   7.440 2.11e-13 ***
condizioni_meteonebbia                            3.941419   5.179264   0.761 0.446831    
condizioni_meteonebbia al mattino                 1.941026   3.999890   0.485 0.627588    
condizioni_meteoneve                              1.218531   5.913367   0.206 0.836782    
condizioni_meteoneve debole                      -2.085923   9.623681  -0.217 0.828447    
condizioni_meteoneve e schiarite                  0.838039   5.907501   0.142 0.887218    
condizioni_meteonubi sparse                       3.594634   4.192864   0.857 0.391466    
condizioni_meteopioggia                          -4.355012   5.130793  -0.849 0.396190    
condizioni_meteopioggia debole                    1.666948   4.129481   0.404 0.686539    
condizioni_meteopioggia e schiarite               2.041401   3.973291   0.514 0.607515    
condizioni_meteopioggia mista a neve e schiarite 12.916440   9.615611   1.343 0.179477    
condizioni_meteopoco nuvoloso                     2.658193   3.977685   0.668 0.504107    
condizioni_meteosereno                            3.291741   4.017568   0.819 0.412783    
condizioni_meteosole e caldo                      2.471964   4.237971   0.583 0.559826    
condizioni_meteotemporale e schiarite             3.429329   4.460218   0.769 0.442146    
sessoM                                            3.422102   0.567742   6.028 2.31e-09 ***
anni_ricovero                                    -0.023249   0.025617  -0.908 0.364315    
temperatura_media                                -0.053475   0.060828  -0.879 0.379543    
umidita_media                                     0.008623   0.024734   0.349 0.727441    
HI...27True                                       1.230547   1.187264   1.036 0.300232    
natural_lightTrue                                 3.049702   0.868794   3.510 0.000467 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 8.748 on 1033 degrees of freedom
Multiple R-squared:  0.1183,	Adjusted R-squared:  0.1004 
F-statistic: 6.599 on 21 and 1033 DF,  p-value: < 2.2e-16

> model_physical <- lm(score_postop ~ score_preop + sesso + anni_ricovero + temperatura_media + umidita_media + HI...27 + natural_light, data=physical)
> summary(model_physical)

Call:
lm(formula = score_postop ~ score_preop + sesso + anni_ricovero + 
    temperatura_media + umidita_media + HI...27 + natural_light, 
    data = physical)

Residuals:
    Min      1Q  Median      3Q     Max 
-26.930  -6.450  -0.110   7.157  23.192 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)       33.46675    2.80699  11.923  < 2e-16 ***
score_preop        0.25232    0.03370   7.487 1.49e-13 ***
sessoM             3.45780    0.56219   6.151 1.10e-09 ***
anni_ricovero     -0.02056    0.02537  -0.811 0.417734    
temperatura_media -0.05854    0.05649  -1.036 0.300315    
umidita_media     -0.01464    0.01861  -0.787 0.431667    
HI...27True        1.24030    1.09856   1.129 0.259146    
natural_lightTrue  3.00634    0.86124   3.491 0.000502 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 8.727 on 1047 degrees of freedom
Multiple R-squared:  0.1104,	Adjusted R-squared:  0.1045 
F-statistic: 18.57 on 7 and 1047 DF,  p-value: < 2.2e-16

> model_physical <- lm(score_postop ~ score_preop + sesso + temperatura_media + umidita_media + HI...27 + natural_light, data=physical)
> summary(model_physical)

Call:
lm(formula = score_postop ~ score_preop + sesso + temperatura_media + 
    umidita_media + HI...27 + natural_light, data = physical)

Residuals:
     Min       1Q   Median       3Q      Max 
-26.5781  -6.4041  -0.1428   7.2291  23.0522 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)       32.01739    2.16364  14.798  < 2e-16 ***
score_preop        0.25284    0.03369   7.505 1.31e-13 ***
sessoM             3.53412    0.55416   6.377 2.70e-10 ***
temperatura_media -0.05682    0.05644  -1.007 0.314308    
umidita_media     -0.01486    0.01861  -0.799 0.424658    
HI...27True        1.23663    1.09837   1.126 0.260473    
natural_lightTrue  2.99870    0.86105   3.483 0.000517 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 8.726 on 1048 degrees of freedom
Multiple R-squared:  0.1099,	Adjusted R-squared:  0.1048 
F-statistic: 21.56 on 6 and 1048 DF,  p-value: < 2.2e-16

> model_physical <- lm(score_postop ~ score_preop + sesso + umidita_media + HI...27 + natural_light, data=physical)
> summary(model_physical)

Call:
lm(formula = score_postop ~ score_preop + sesso + umidita_media + 
    HI...27 + natural_light, data = physical)

Residuals:
     Min       1Q   Median       3Q      Max 
-26.7957  -6.4429  -0.0574   7.2299  22.9295 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)       31.049341   1.938220  16.020  < 2e-16 ***
score_preop        0.255127   0.033613   7.590 7.04e-14 ***
sessoM             3.548597   0.553978   6.406 2.26e-10 ***
umidita_media     -0.008655   0.017555  -0.493 0.622109    
HI...27True        0.422609   0.743358   0.569 0.569808    
natural_lightTrue  2.859270   0.849840   3.364 0.000795 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 8.726 on 1049 degrees of freedom
Multiple R-squared:  0.109,	Adjusted R-squared:  0.1048 
F-statistic: 25.67 on 5 and 1049 DF,  p-value: < 2.2e-16

> model_physical <- lm(score_postop ~ score_preop + sesso + HI...27 + natural_light, data=physical)
> summary(model_physical)

Call:
lm(formula = score_postop ~ score_preop + sesso + HI...27 + natural_light, 
    data = physical)

Residuals:
     Min       1Q   Median       3Q      Max 
-26.9439  -6.4657  -0.0147   7.2417  23.2232 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)       30.36593    1.35418  22.424  < 2e-16 ***
score_preop        0.25578    0.03357   7.618 5.73e-14 ***
sessoM             3.55178    0.55374   6.414 2.14e-10 ***
HI...27True        0.53775    0.70547   0.762 0.446079    
natural_lightTrue  2.87514    0.84892   3.387 0.000733 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 8.723 on 1050 degrees of freedom
Multiple R-squared:  0.1088,	Adjusted R-squared:  0.1054 
F-statistic: 32.05 on 4 and 1050 DF,  p-value: < 2.2e-16

> model_physical <- lm(score_postop ~ score_preop + sesso + natural_light, data=physical)
> summary(model_physical)

Call:
lm(formula = score_postop ~ score_preop + sesso + natural_light, 
    data = physical)

Residuals:
     Min       1Q   Median       3Q      Max 
-26.9734  -6.4988  -0.1066   7.2332  23.1116 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)       30.47451    1.34640  22.634  < 2e-16 ***
score_preop        0.25331    0.03341   7.582 7.49e-14 ***
sessoM             3.56186    0.55347   6.435 1.87e-10 ***
natural_lightTrue  2.95001    0.84305   3.499 0.000486 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 8.721 on 1051 degrees of freedom
Multiple R-squared:  0.1083,	Adjusted R-squared:  0.1058 
F-statistic: 42.56 on 3 and 1051 DF,  p-value: < 2.2e-16
