getwd()
heartdata=read.csv(file.choose())
head(heartdata)
head(heartdata,20)
tail(heartdata)
ncol(heartdata)
nrow(heartdata)
str(heartdata)
summary(heartdata)
heartdata=heartdata[-1]
head(heartdata)
table(heartdata$sex)
table(heartdata$thalachh)
table(heartdata$sex,heartdata$cp)
table(heartdata$sex,heartdata$chol)
table(heartdata$chol)
crosstab3=xtabs(~heartdata$sex+heartdata$trtbps+heartdata$chol)
ftable(crosstab3)
plot(heartdata$restecg,type="l")
barplot(table(heartdata$sex),col=c("Red","Green"))
barplot(table(heartdata$thalachh),col=c("Red","Yellow","Blue","Green"))
barplot(table(heartdata$sex,heartdata$oldpeak))
barplot(table(heartdata$sex,heartdata$chol))
pie(table(heartdata$trtbps)) # Pie chart
pie(table(heartdata$fbs),col=c("Red","Yellow","Green","Blue"))
hist(heartdata$thalachh, col = "skyblue", xlab = "chol", ylab = "fbs", main = "cp")
boxplot(caa ~ sex, data = heartdata, col = c("blue", "red"), xlab = "sex", ylab = "caa", main = "fbs")
plot(heartdata$caa, heartdata$chol, xlab = "caa", ylab = "chol", main = "caa", col = "red")
barplot(table(heartdata$cp, heartdata$sex), col = c("blue", "red"), legend = TRUE, xlab = "Chest Pain Type", ylab = "Frequency", main = "Chest Pain Type by Sex")







