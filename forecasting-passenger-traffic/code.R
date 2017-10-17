# Enter your code here. Read input from STDIN. Print output to STDOUT
# https://www.hackerrank.com/challenges/forecasting-passenger-traffic/problem
input = "data.txt"
# input = "stdin"
data <- suppressWarnings(read.table(input,skip = 1))
colnames(data) = c("period","passeners")
forecast = c(1563178,1312558,1501793,1388316,1325942,1410769,687396,1493945,1161128,590382,1082215,1416327)
writeLines(as.character(forecast))
