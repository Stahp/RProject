load('D:/My Personal Documents/Project/titanic_train.Rdata')

for (c in names(train))
  print(nrow(train[c]))