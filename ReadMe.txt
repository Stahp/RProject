Q2:
-59A observations de 12 variables
-names(train) give the name of the variables:
"PassengerId": Qualitative
"Survived": Qualitative
"Pclass": Qualitative
"Name": Qualitative
"Sex": Qualitative
"Age": Quantitative
"SibSp": Quantitative
"Parch": Quantitative
"Ticket": Qualitative
"Fare": Quantitative
"Cabin": Qualitative
"Embarked": Qualitative
- is.na returns either true or false whether the value is missing or not.
using it on the each of the colums in train and summing the result array, we will have the number of missing values.

for (c in names(train))
  print(sum(is.na(train[c])))

and so, we can see that there are:
	-463 missing values in Cabin
	-121 missing values in Age
	-001 missing values in Embarked
