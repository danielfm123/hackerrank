# https://www.hackerrank.com/challenges/forecasting-passenger-traffic/problem
<<<<<<< HEAD
input = "forecasting-passenger-traffic/data.txt"
# input = "stdin"
=======
# input = "forecasting-passenger-traffic/data.txt"
# input = "forecasting-passenger-traffic/data2.txt"
input = "stdin"
>>>>>>> 4af4d266af1bec8e7fa035ff3517c654d24f1677
data <- suppressWarnings(read.table(input,skip = 1))
colnames(data) = c("period","value")
data$month = as.character(1:nrow(data) %% 12)
data$trend = 1:nrow(data)
fit = lm(value ~ month + trend,data)

predict_dataset = data.frame(month = as.character((nrow(data)+1):(nrow(data)+12) %% 12) ,
                             trend = (nrow(data)+1):(nrow(data)+12))
forecast = round(predict(fit,predict_dataset))
writeLines(as.character(forecast))
