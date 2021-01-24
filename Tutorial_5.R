customer
y <- table(customer$Region)
y

View(y)

barplot(y)
barplot(y[order(y)])
barplot(y[order(y)], horiz = TRUE)
barplot(y[order(y)], horiz = TRUE, col = 'red')
barplot(y[order(y)], horiz = TRUE, col = c('red', 'blue', 'yellow', 'green'))
barplot(y[order(y)], horiz = TRUE, col = c('red', 'blue', 'yellow', 'green')
        ,border = NA)
barplot(y[order(y)], horiz = TRUE, col = c('red', 'blue', 'yellow', 'green')
        ,border = NA, main = "Frequency of regions")
barplot(y[order(y)], horiz = TRUE, col = c('red', 'blue', 'yellow', 'green')
        ,border = NA, main = "Frequency of regions",xlab = "Number of Customer")


hist(customer$Age)
hist(customer$Age, breaks = 5)
hist(customer$Age, breaks = c(0, 40, 60, 100), freq = TRUE, col = "green")