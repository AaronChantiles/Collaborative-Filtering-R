install.packages("recommenderlab")
library(recommenderlab)

data(MovieLense)

myrating = matrix(NA, 1, 1664)
myrating[c(1,11,12,22,23,29,50,56,64,71,82,88,94,96,98)] = c(3,5,5,4,4,3,5,5,4,4,1,3,4,2,5)
myrating = as(myrating, "realRatingMatrix")

rec.ub = Recommender(MovieLense, "UBCF")
pred.ub = predict(rec.ub, myrating, n=10, type="topNList")
as(pred.ub, "list")
