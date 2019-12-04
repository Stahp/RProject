load('D:/My Personal Documents/Project/titanic_train.Rdata')

for (c in names(train))
  print(sum(is.na(train[c])))

S= train["Survived"][,1]
Sx= train["Sex"][,1]
P= train["Pclass"][,1]
A= train["Age"][,1]

summary(S)
summary(Sx)
summary(P)
summary(A)

cAge= cut(A, breaks= c(0, 20, 40, 60, 80))
summary(cAge)

counts= table(S, Sx)
barplot(counts, col=c("blue","red"), xlab="Sex", legend = rownames(counts), beside= TRUE)
barplot(counts, col=c("blue","red"), xlab="Sex", legend = c("Didn't Survive", "Survived"), beside= TRUE)
