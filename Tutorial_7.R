# Reading the data from the CSV file
wine <- read.csv('./GitHub/R-Programming/wine.csv', sep = ',', header = TRUE)

# Displaying the data set
View(wine)

# Reading the first 5 rows from the data set
View(head(wine, 5))

# PERFORMING EDD
# Barplot
barplot(table(wine$quality))

# From the barplot result we can see that there are more NORMAL quality wines than others
# Now let us separate this categories into BAD, NORMAL and GOOD quality wines.
# CONSIDERING THIS 
# 3, 4 ---> BAD
# 5, 6 ---> NORMAL
# 7, 8 ---> GOOD
wine$taste <- ifelse(wine$quality<(5), 'bad', 'normal')
wine$taste[wine$quality > (6)] <- 'good'
wine$taste <- as.factor(wine$taste)
table(wine$taste)


# STEPS FOR SPLITTING THE DATA INTO TESTING AND TRAINING SET
# Let us split by giving 70% for Training and 30% for Testing
set.seed(101)
splitData <- sample(nrow(wine), 0.7 * nrow(wine))
trainData <- wine[splitData, ] # 70% data for training
testData <- wine[-splitData, ] # 30% data for testing

# We need the RandomForest library to make the model
install.packages("randomForest")
library(randomForest)

# Creating and training the model
model <- randomForest(taste ~ . - quality, data = trainData)

model

# Making predictions using the trained model
pred <- predict(model, newdata = testData)
table(pred, testData$taste)

# Checking the Accuracy
accuracy = ((2+35+371)/ nrow(testData))*100
print(accuracy)







