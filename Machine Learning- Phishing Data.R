library(caret)
library(doMC)
registerDoMC(4)
data <- read.csv('C:/USER DATA/Desktop/Project/Phishing Data.csv', header = F,colClasses = "factor")
names <- c("having_IP_Address", "URL_Length", "Shortening_Service", "having_At_Symbol",
           "double_slash_redirecting", "Prefix_Suffix", "having_Sub_Domain","SSLfinal_State",
           "Domain_registration_length", "Favicon", "port","HTTPS_token", "Request_URL", "URL_of_Anchor",
           "Links_in_tags","SFH", "Submitting_to_email", "Abnormal_URL", "Redirect","On_mouseover",
           "RightClick", "popUp_Window", "Iframe","age_of_domain", "DNSRecord", "web_traffic", "Page_Rank",
           "Google_Index", "Links_pointing_to_page", "Statistical_report", "Result")
names(data)<-names
str(data)
set.seed(1234)
train_in <- createDataPartition(y = data$Result,p = 0.75, list = FALSE)
training <- data[train_in,]
testing <- data[-train_in,]
fitControl <- trainControl(method = 'repeatedcv', repeats = 5,number = 5, verboseIter = T)

print("Logistic Regression and Prediction")
log.fit <- train(Result ~ .,  data = training, method = "LogitBoost", trControl = fitControl,
                 tuneLength = 5)
plot(log.fit)
log.predict <- predict(log.fit, testing[,-31])
confusionMatrix(log.predict, testing$Result)
fitControl = trainControl(method = "repeatedcv", repeats = 5,number = 5, verboseIter = T)

print("Tree bag and Prediction")
treebag.fit <- train(Result ~ .,  data = training,method = "treebag", importance = T)
fitControl = trainControl(method = "repeatedcv", repeats = 5,number = 5, verboseIter = T)
treebag.predict <- predict(treebag.fit, testing[,-31])
confusionMatrix(treebag.predict, testing$Result)