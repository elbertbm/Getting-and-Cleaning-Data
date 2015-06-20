The script procedures as follows:
1.Read "X_train.txt","X_test.txt" as train and test.
2.Read "features.txt" as features.
3.Use rbind funtion to merge train and test dataframe as total dataframe.
4.Use colnames funtion to give variable name of total dataframe from features.
5.Select variable which contain  mean and standard deviation to part dataframe, which is selected from total dataframe.
6.Use sapply funtion to create mean of each vriable of part dataframe to partmean.

