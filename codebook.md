Input data:

- 'features.txt': List of all feature variables.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

Information on input variables (i.e. the feature variables):
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a 
corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these 
three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Complete list of input variables:
"tBodyAcc-mean()-X"
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tBodyAcc-mad()-X"
"tBodyAcc-mad()-Y"
"tBodyAcc-mad()-Z"
"tBodyAcc-max()-X"
"tBodyAcc-max()-Y"
"tBodyAcc-max()-Z"
"tBodyAcc-min()-X"
"tBodyAcc-min()-Y"
"tBodyAcc-min()-Z"
"tBodyAcc-sma()"
"tBodyAcc-energy()-X"
"tBodyAcc-energy()-Y"
"tBodyAcc-energy()-Z"
"tBodyAcc-iqr()-X"
"tBodyAcc-iqr()-Y"
"tBodyAcc-iqr()-Z"
"tBodyAcc-entropy()-X"
"tBodyAcc-entropy()-Y"
"tBodyAcc-entropy()-Z"
"tBodyAcc-arCoeff()-X,1"
"tBodyAcc-arCoeff()-X,2"
"tBodyAcc-arCoeff()-X,3"
"tBodyAcc-arCoeff()-X,4"
"tBodyAcc-arCoeff()-Y,1"
"tBodyAcc-arCoeff()-Y,2"
"tBodyAcc-arCoeff()-Y,3"
"tBodyAcc-arCoeff()-Y,4"
"tBodyAcc-arCoeff()-Z,1"
"tBodyAcc-arCoeff()-Z,2"
"tBodyAcc-arCoeff()-Z,3"
"tBodyAcc-arCoeff()-Z,4"
"tBodyAcc-correlation()-X,Y"
"tBodyAcc-correlation()-X,Z"
"tBodyAcc-correlation()-Y,Z"
"tGravityAcc-mean()-X"



List of output variables:

tBodyAccMag.mean._AVERAGE
tBodyAccMag.std._AVERAGE
tGravityAccMag.mean._AVERAGE
tGravityAccMag.std._AVERAGE
tBodyAccJerkMag.mean._AVERAGE
tBodyAccJerkMag.std._AVERAGE
tBodyGyroMag.mean._AVERAGE
tBodyGyroMag.std._AVERAGE
tBodyGyroJerkMag.mean._AVERAGE
tBodyGyroJerkMag.std._AVERAGE
fBodyAcc.mean.X_AVERAGE
fBodyAcc.mean.Y_AVERAGE
fBodyAcc.mean.Z_AVERAGE
fBodyAcc.std.X_AVERAGE
fBodyAcc.std.Y_AVERAGE
fBodyAcc.std.Z_AVERAGE
fBodyAcc.meanFreq.X_AVERAGE
fBodyAcc.meanFreq.Y_AVERAGE
fBodyAcc.meanFreq.Z_AVERAGE
fBodyAccJerk.mean.X_AVERAGE
fBodyAccJerk.mean.Y_AVERAGE
fBodyAccJerk.mean.Z_AVERAGE
fBodyAccJerk.std.X_AVERAGE
fBodyAccJerk.std.Y_AVERAGE
fBodyAccJerk.std.Z_AVERAGE
fBodyAccJerk.meanFreq.X_AVERAGE
fBodyAccJerk.meanFreq.Y_AVERAGE
fBodyAccJerk.meanFreq.Z_AVERAGE
fBodyGyro.mean.X_AVERAGE
fBodyGyro.mean.Y_AVERAGE
fBodyGyro.mean.Z_AVERAGE
fBodyGyro.std.X_AVERAGE
fBodyGyro.std.Y_AVERAGE
fBodyGyro.std.Z_AVERAGE
fBodyGyro.meanFreq.X_AVERAGE
fBodyGyro.meanFreq.Y_AVERAGE
fBodyGyro.meanFreq.Z_AVERAGE
fBodyAccMag.mean._AVERAGE
fBodyAccMag.std._AVERAGE
fBodyAccMag.meanFreq._AVERAGE
fBodyBodyAccJerkMag.mean._AVERAGE
fBodyBodyAccJerkMag.std._AVERAGE
fBodyBodyAccJerkMag.meanFreq._AVERAGE
fBodyBodyGyroMag.mean._AVERAGE
fBodyBodyGyroMag.std._AVERAGE
fBodyBodyGyroMag.meanFreq._AVERAGE
fBodyBodyGyroJerkMag.mean._AVERAGE
fBodyBodyGyroJerkMag.std._AVERAGE
fBodyBodyGyroJerkMag.meanFreq._AVERAGE
angle.tBodyAccMean.gravity._AVERAGE
angle.tBodyAccJerkMean..gravityMean._AVERAGE
angle.tBodyGyroMean.gravityMean._AVERAGE
angle.tBodyGyroJerkMean.gravityMean._AVERAGE
angle.X.gravityMean._AVERAGE
angle.Y.gravityMean._AVERAGE
angle.Z.gravityMean._AVERAGE


