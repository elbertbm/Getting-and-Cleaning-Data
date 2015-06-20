library(sqldf)
##read dataset,label,variable names 
train<-read.table("./UCI HAR Dataset/train/X_train.txt")
features<-read.table("./UCI HAR Dataset/features.txt")
test<-read.table("./UCI HAR Dataset/test/X_test.txt")
##merge train and test dataset with variable names
total<-rbind(test,train)
colnames(total)<-features[,2]
##select column with mean and std
partname<-sqldf("select V2 from features where (V2 like '%mean()%' or V2 like '%std()%') ")
partname1<-partname[,1]
part<-subset(total,select=partname1)
##create table with mean of each variable selected
partmean<-sapply(part,mean)
write.table(partmean,"./partmean.txt",row.name=FALSE)
