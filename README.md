CLASSIFICATION AND PREDICTION OF PHISHING WEBSITES

This project helps to identify whether a website is phishing website or not using the phishing website dataset. 

DATASET DESCRIPTION:

•	Data set consists of 31 columns and 2456 rows of data
•	Each attribute represents how the website can be phished.
•	Of 31 columns, there are 30 feature and 1 class vector.

DATASET LINK: 

https://drive.google.com/open?id=1INjk9MQ-CiPlFzp2UA2Gr8yX2F_kR2xy8UQhWWcyQsI

MODELS USED:

To classify and predict the phishing websites , I tried with two Models.
•	Boosted Logistic Regression
•	Tree Bag Model


1.	Boosted Logistic Regression

     I have started with a Boosted Logistic Regression Model to predict the phishing websites. Logistic Regression Model was fitted and the result obtained was best for a Logistic Regression part. I got an accuracy of 0.9357. Confusion Matrix was also bought after the prediction.

    This is the simple algorithm which I wanted to start on with.

2.	Tree Bag Model:

    Tree Bag Model is the next predicted model. An another version of random forest model is used. Unlike Random Forest it won’t omit the unimportant features. To test all the features, I used Tree Bag Model.  The results from the tree bag model were pretty amazing and the prediction accuracy also matched to the level of the best fit model. The prediction accuracy was 0.9739. Confusion Matrix is also bought after the prediction. The accuracy was very good and the model was the best fit.

