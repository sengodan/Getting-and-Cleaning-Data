# Cookbook

This codebook was generated on 

```
## [1] "2015-05-23"
```


## Variable list and descriptions

Variable Name | Description|
------------- | ------------|
subject | ID the subject who performed the activity for each window sample. Its range is from 1 to 30.|
activity | Activity Name|
MEAN - tBodyAcc-X | Mean of tBodyAcc-X|
MEAN - tBodyAcc-Y | Mean of tBodyAcc-Y
MEAN - tBodyAcc-Z | Mean of tBodyAcc-Z
STD - tBodyAcc-X  | Standard Deviation of tBodyAcc-X
STD - tBodyAcc-Y  | Standard Deviation of tBodyAcc-Y
STD - tBodyAcc-Z  | Standard Deviation of tBodyAcc-Z

### Additional Variables


MEAN - tGravityAcc-X
MEAN - tGravityAcc-Y
MEAN - tGravityAcc-Z
STD - tGravityAcc-X        
STD - tGravityAcc-Y
STD - tGravityAcc-Z
MEAN - tBodyAccJerk-X      
MEAN - tBodyAccJerk-Y
MEAN - tBodyAccJerk-Z       
STD - tBodyAccJerk-X       
STD - tBodyAccJerk-Y        
STD - tBodyAccJerk-Z        
MEAN - tBodyGyro-X
MEAN - tBodyGyro-Y          
MEAN - tBodyGyro-Z          
STD - tBodyGyro-X          
STD - tBodyGyro-Y           
STD - tBodyGyro-Z           
MEAN - tBodyGyroJerk-X     
MEAN - tBodyGyroJerk-Y      
MEAN - tBodyGyroJerk-Z      
STD - tBodyGyroJerk-X      
STD - tBodyGyroJerk-Y       
STD - tBodyGyroJerk-Z       
MEAN - tBodyAccMag         
STD - tBodyAccMag           
MEAN - tGravityAccMag       
STD - tGravityAccMag       
MEAN - tBodyAccJerkMag      
STD - tBodyAccJerkMag       
MEAN - tBodyGyroMag        
STD - tBodyGyroMag          
MEAN - tBodyGyroJerkMag     
STD - tBodyGyroJerkMag     
MEAN - fBodyAcc-X           
MEAN - fBodyAcc-Y           
MEAN - fBodyAcc-Z          
STD - fBodyAcc-X            
STD - fBodyAcc-Y            
STD - fBodyAcc-Z
MEAN - fBodyAccJerk-X       
MEAN - fBodyAccJerk-Y       
MEAN - fBodyAccJerk-Z      
STD - fBodyAccJerk-X        
STD - fBodyAccJerk-Y        
STD - fBodyAccJerk-Z       
MEAN - fBodyGyro-X          
MEAN - fBodyGyro-Y          
MEAN - fBodyGyro-Z         
STD - fBodyGyro-X           
STD - fBodyGyro-Y           
STD - fBodyGyro-Z          
MEAN - fBodyAccMag          
STD - fBodyAccMag           
MEAN - fBodyBodyAccJerkMag 
STD - fBodyBodyAccJerkMag   
MEAN - fBodyBodyGyroMag     
STD - fBodyBodyGyroMag



## Show a few rows of the dataset



```r
source("run_analysis.R")
head(run_analysis())
```

```
## 
## Attaching package: 'dplyr'
## 
## The following object is masked from 'package:stats':
## 
##     filter
## 
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```
##   subject activity MEAN - tBodyAcc-X MEAN - tBodyAcc-Y MEAN - tBodyAcc-Z
## 1       1 STANDING         0.2885845       -0.02029417        -0.1329051
## 2       1 STANDING         0.2784188       -0.01641057        -0.1235202
## 3       1 STANDING         0.2796531       -0.01946716        -0.1134617
## 4       1 STANDING         0.2791739       -0.02620065        -0.1232826
## 5       1 STANDING         0.2766288       -0.01656965        -0.1153619
## 6       1 STANDING         0.2771988       -0.01009785        -0.1051373
##   STD - tBodyAcc-X STD - tBodyAcc-Y STD - tBodyAcc-Z MEAN - tGravityAcc-X
## 1       -0.9952786       -0.9831106       -0.9135264            0.9633961
## 2       -0.9982453       -0.9753002       -0.9603220            0.9665611
## 3       -0.9953796       -0.9671870       -0.9789440            0.9668781
## 4       -0.9960915       -0.9834027       -0.9906751            0.9676152
## 5       -0.9981386       -0.9808173       -0.9904816            0.9682244
## 6       -0.9973350       -0.9904868       -0.9954200            0.9679482
##   MEAN - tGravityAcc-Y MEAN - tGravityAcc-Z STD - tGravityAcc-X
## 1           -0.1408397           0.11537494          -0.9852497
## 2           -0.1415513           0.10937881          -0.9974113
## 3           -0.1420098           0.10188392          -0.9995740
## 4           -0.1439765           0.09985014          -0.9966456
## 5           -0.1487502           0.09448590          -0.9984293
## 6           -0.1482100           0.09190972          -0.9989793
##   STD - tGravityAcc-Y STD - tGravityAcc-Z MEAN - tBodyAccJerk-X
## 1          -0.9817084          -0.8776250            0.07799634
## 2          -0.9894474          -0.9316387            0.07400671
## 3          -0.9928658          -0.9929172            0.07363596
## 4          -0.9813928          -0.9784764            0.07732061
## 5          -0.9880982          -0.9787449            0.07344436
## 6          -0.9867539          -0.9973064            0.07793244
##   MEAN - tBodyAccJerk-Y MEAN - tBodyAccJerk-Z STD - tBodyAccJerk-X
## 1           0.005000803          -0.067830808           -0.9935191
## 2           0.005771104           0.029376633           -0.9955481
## 3           0.003104037          -0.009045631           -0.9907428
## 4           0.020057642          -0.009864772           -0.9926974
## 5           0.019121574           0.016779979           -0.9964202
## 6           0.018684046           0.009344434           -0.9948136
##   STD - tBodyAccJerk-Y STD - tBodyAccJerk-Z MEAN - tBodyGyro-X
## 1           -0.9883600           -0.9935750       -0.006100849
## 2           -0.9810636           -0.9918457       -0.016111620
## 3           -0.9809556           -0.9896866       -0.031698294
## 4           -0.9875527           -0.9934976       -0.043409983
## 5           -0.9883587           -0.9924549       -0.033960416
## 6           -0.9887145           -0.9922663       -0.028775508
##   MEAN - tBodyGyro-Y MEAN - tBodyGyro-Z STD - tBodyGyro-X
## 1        -0.03136479         0.10772540        -0.9853103
## 2        -0.08389378         0.10058429        -0.9831200
## 3        -0.10233542         0.09612688        -0.9762921
## 4        -0.09138618         0.08553770        -0.9913848
## 5        -0.07470803         0.07739203        -0.9851836
## 6        -0.07039311         0.07901214        -0.9851808
##   STD - tBodyGyro-Y STD - tBodyGyro-Z MEAN - tBodyGyroJerk-X
## 1        -0.9766234        -0.9922053            -0.09916740
## 2        -0.9890458        -0.9891212            -0.11050283
## 3        -0.9935518        -0.9863787            -0.10848567
## 4        -0.9924073        -0.9875542            -0.09116989
## 5        -0.9923781        -0.9874019            -0.09077010
## 6        -0.9921175        -0.9830768            -0.09424758
##   MEAN - tBodyGyroJerk-Y MEAN - tBodyGyroJerk-Z STD - tBodyGyroJerk-X
## 1            -0.05551737            -0.06198580            -0.9921107
## 2            -0.04481873            -0.05924282            -0.9898726
## 3            -0.04241031            -0.05582883            -0.9884618
## 4            -0.03633262            -0.06046466            -0.9911194
## 5            -0.03763253            -0.05828932            -0.9913545
## 6            -0.04335526            -0.04193600            -0.9916216
##   STD - tBodyGyroJerk-Y STD - tBodyGyroJerk-Z MEAN - tBodyAccMag
## 1            -0.9925193            -0.9920553         -0.9594339
## 2            -0.9972926            -0.9938510         -0.9792892
## 3            -0.9956321            -0.9915318         -0.9837031
## 4            -0.9966410            -0.9933289         -0.9865418
## 5            -0.9964730            -0.9945110         -0.9928271
## 6            -0.9960147            -0.9930906         -0.9942950
##   STD - tBodyAccMag MEAN - tGravityAccMag STD - tGravityAccMag
## 1        -0.9505515            -0.9594339           -0.9505515
## 2        -0.9760571            -0.9792892           -0.9760571
## 3        -0.9880196            -0.9837031           -0.9880196
## 4        -0.9864213            -0.9865418           -0.9864213
## 5        -0.9912754            -0.9928271           -0.9912754
## 6        -0.9952490            -0.9942950           -0.9952490
##   MEAN - tBodyAccJerkMag STD - tBodyAccJerkMag MEAN - tBodyGyroMag
## 1             -0.9933059            -0.9943364          -0.9689591
## 2             -0.9912535            -0.9916944          -0.9806831
## 3             -0.9885313            -0.9903969          -0.9763171
## 4             -0.9930780            -0.9933808          -0.9820599
## 5             -0.9934800            -0.9958537          -0.9852037
## 6             -0.9930177            -0.9954243          -0.9858944
##   STD - tBodyGyroMag MEAN - tBodyGyroJerkMag STD - tBodyGyroJerkMag
## 1         -0.9643352              -0.9942478             -0.9913676
## 2         -0.9837542              -0.9951232             -0.9961016
## 3         -0.9860515              -0.9934032             -0.9950910
## 4         -0.9873511              -0.9955022             -0.9952666
## 5         -0.9890626              -0.9958076             -0.9952580
## 6         -0.9864403              -0.9952748             -0.9952050
##   MEAN - fBodyAcc-X MEAN - fBodyAcc-Y MEAN - fBodyAcc-Z STD - fBodyAcc-X
## 1        -0.9947832        -0.9829841        -0.9392687       -0.9954217
## 2        -0.9974507        -0.9768517        -0.9735227       -0.9986803
## 3        -0.9935941        -0.9725115        -0.9833040       -0.9963128
## 4        -0.9954906        -0.9835697        -0.9910798       -0.9963121
## 5        -0.9972859        -0.9823010        -0.9883694       -0.9986065
## 6        -0.9966567        -0.9869395        -0.9927386       -0.9976438
##   STD - fBodyAcc-Y STD - fBodyAcc-Z MEAN - fBodyAccJerk-X
## 1       -0.9831330       -0.9061650            -0.9923325
## 2       -0.9749298       -0.9554381            -0.9950322
## 3       -0.9655059       -0.9770493            -0.9909937
## 4       -0.9832444       -0.9902291            -0.9944466
## 5       -0.9801295       -0.9919150            -0.9962920
## 6       -0.9922637       -0.9970459            -0.9948507
##   MEAN - fBodyAccJerk-Y MEAN - fBodyAccJerk-Z STD - fBodyAccJerk-X
## 1            -0.9871699            -0.9896961           -0.9958207
## 2            -0.9813115            -0.9897398           -0.9966523
## 3            -0.9816423            -0.9875663           -0.9912488
## 4            -0.9887272            -0.9913542           -0.9913783
## 5            -0.9887900            -0.9906244           -0.9969025
## 6            -0.9882443            -0.9901575           -0.9952180
##   STD - fBodyAccJerk-Y STD - fBodyAccJerk-Z MEAN - fBodyGyro-X
## 1           -0.9909363           -0.9970517         -0.9865744
## 2           -0.9820839           -0.9926268         -0.9773867
## 3           -0.9814148           -0.9904159         -0.9754332
## 4           -0.9869269           -0.9943908         -0.9871096
## 5           -0.9886067           -0.9929065         -0.9824465
## 6           -0.9901788           -0.9930667         -0.9848902
##   MEAN - fBodyGyro-Y MEAN - fBodyGyro-Z STD - fBodyGyro-X
## 1         -0.9817615         -0.9895148        -0.9850326
## 2         -0.9925300         -0.9896058        -0.9849043
## 3         -0.9937147         -0.9867557        -0.9766422
## 4         -0.9936015         -0.9871913        -0.9928104
## 5         -0.9929838         -0.9886664        -0.9859818
## 6         -0.9927862         -0.9807784        -0.9852871
##   STD - fBodyGyro-Y STD - fBodyGyro-Z MEAN - fBodyAccMag STD - fBodyAccMag
## 1        -0.9738861        -0.9940349         -0.9521547        -0.9561340
## 2        -0.9871681        -0.9897847         -0.9808566        -0.9758658
## 3        -0.9933990        -0.9873282         -0.9877948        -0.9890155
## 4        -0.9916460        -0.9886776         -0.9875187        -0.9867420
## 5        -0.9919558        -0.9879443         -0.9935909        -0.9900635
## 6        -0.9916595        -0.9853661         -0.9948360        -0.9952833
##   MEAN - fBodyBodyAccJerkMag STD - fBodyBodyAccJerkMag
## 1                 -0.9937257                -0.9937550
## 2                 -0.9903355                -0.9919603
## 3                 -0.9892801                -0.9908667
## 4                 -0.9927689                -0.9916998
## 5                 -0.9955228                -0.9943890
## 6                 -0.9947329                -0.9951562
##   MEAN - fBodyBodyGyroMag STD - fBodyBodyGyroMag
## 1              -0.9801349             -0.9613094
## 2              -0.9882956             -0.9833219
## 3              -0.9892548             -0.9860277
## 4              -0.9894128             -0.9878358
## 5              -0.9914330             -0.9890594
## 6              -0.9905000             -0.9858609
##   MEAN - fBodyBodyGyroJerkMag STD - fBodyBodyGyroJerkMag
## 1                  -0.9919904                 -0.9906975
## 2                  -0.9958539                 -0.9963995
## 3                  -0.9950305                 -0.9951274
## 4                  -0.9952207                 -0.9952369
## 5                  -0.9950928                 -0.9954648
## 6                  -0.9951433                 -0.9952387
```

## Save to file

Save data table objects to a tab-delimited text file called Result.txt

#### Additional Information


```r
Sys.Date()
```

```
## [1] "2015-05-23"
```

```r
sessionInfo()
```

```
## R version 3.2.0 (2015-04-16)
## Platform: i386-w64-mingw32/i386 (32-bit)
## Running under: Windows 7 (build 7601) Service Pack 1
## 
## locale:
## [1] LC_COLLATE=English_United States.1252 
## [2] LC_CTYPE=English_United States.1252   
## [3] LC_MONETARY=English_United States.1252
## [4] LC_NUMERIC=C                          
## [5] LC_TIME=English_United States.1252    
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] dplyr_0.4.1  knitr_1.10.5
## 
## loaded via a namespace (and not attached):
##  [1] lazyeval_0.1.10 assertthat_0.1  magrittr_1.5    formatR_1.2    
##  [5] parallel_3.2.0  DBI_0.3.1       tools_3.2.0     Rcpp_0.11.6    
##  [9] stringi_0.4-1   stringr_1.0.0   evaluate_0.7
```
