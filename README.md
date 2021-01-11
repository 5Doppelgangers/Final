# Final

Link to Final Project Storyboard:
[Storyboard](https://public.tableau.com/views/FinalProject_16097282132530/Story1?:language=en&:display_count=y&publish=yes&:origin=viz_share_link)

[Interactive](https://public.tableau.com/shared/PHGZ6CT75?:display_count=y&:origin=viz_share_link)

Link to Google Slides Presentation:
[GoogleSlideshowPresentation](https://docs.google.com/presentation/d/1yfVP8bKyJE5PCutWW47kCMDtD_pFFnz2kcA6OhGqN6s/edit#slide=id.p)


## Introduction

Our team name is 5Doppelgangers and our selected topic is "Where it pays to go to college?" where we will look at entry level salaries for states within the US based on the college attended. Our data comes from Kaggle, as Kaggle is a trustworthy site with a lot of interesting datasets that was recommended by our TA. Our data comes in the form of CSV files pulled directly from the Kaggle website. Questions that we hope to answer with the data include, but are not limited to, the following: 

1. Which school type had the highest paid graduates? Can we predict, based on school type, what a person's salary will likely be regardless of major?
2. Which region within the US pays the highest salaries to graduates from each school type? Can we predict, based on a person's school typpe and region, what they will likely make upon graduation? 

The purpose of this project is to make accurate salary predictions that are based on existing known salaries so students can make informed decisions when making their college choice. This model will help the colleges in marketing their school to future students as a reason to attend.

Data transformation and machine learning will be used to create a model that will predict a salary based upon region and school type.

The data for this model is relatively simplified as it has very few missing areas. The raw data consists of a dataset with the features listed above and their corresponding salaries. Twenty percent of this dataset was split into a test dataset with corresponding salaries so accuracy and error of the model can be determined.

The features in this data set are described as below:
Region: What area of the country the school is located in
School Type: Party, Engineering, State, Liberal Arts, or Ivy League

## Citations and Resources

Links to Machine Learning Citations:
[GradientBoostingRegression](https://scikit-learn.org/stable/auto_examples/ensemble/plot_gradient_boosting_regression.html)

## Data Exploration

### Analysis of College Data by U.S. Region

![regionalpiecount.png](https://github.com/5Doppelgangers/Final/blob/Yolanda/regional_analysis_graphs/regionalpiecount.png)

![StartingSalariesbyRegions.png](https://github.com/5Doppelgangers/Final/blob/Yolanda/regional_analysis_graphs/StartingSalariesbyRegions.png)

### Visualizations of categorical features
We visualized each categorical feature to see which features could be good predictors of salary.  We used a violin plot to see the shape of the distribution curve along with mean and interquartile ranges.

![Violin Plot - Region vs Salary](https://github.com/5Doppelgangers/Final/blob/main/Images/Violin%20Graph%20-%20Region%20vs%20Salaries.PNG)
We can see that the California region had the highest salary, followed closely by the Northeastern region. Distributions appear normal.

![Violin Plot - Type vs Salary](https://github.com/5Doppelgangers/Final/blob/main/Images/Violin%20Graph%20-%20Type%20vs%20Salaries.PNG)
We can see that Ivy League and Engineering are the highest starting salary school types. Distribution seems normal.

### Correlation between all the features
By using One-hot encoder, we assigned all numerical values to all the features and we can see the correlation between them.
![Correlation Heat Map](https://github.com/5Doppelgangers/Final/blob/main/Images/Correlation%20Heat%20Map.PNG)
Engineering School Type has the highest correlation with salary followed closely by Ivy League School Type.

### Preliminary Data Preprocessing
- In the preliminary data preprocessing we removed the dollar signs and commas from our salary values.  We also removed all columns from the data set that we weren’t using.
### Preliminary Feature Engineering & Preliminary Feature Selection
- We kept our features data (School Type) and target (Starting Median Salary), as our hypothesis was that we could predict starting salary based on school type.
- Our feature data was categorical, which we changed using OneHotEncoder
### Training and testing sets
- We split our data into training and testing sets using test_train_split from sklearn
- After splitting our data we scaled both training and testing data sets
### The Model
We chose to use a linear regression model as it designed to try and predict a value, in this case, starting salary.  Some limitations of linear regression models are:
 - Linear Regression is Limited to Linear Relationships
      - It assumes there is a straight-line relationship between dependent and independent variables, sometimes this is incorrect
 - Looks only at the Mean of the Dependent Variable
      - Not a complete description of relationships among variables

## Analysis

### MSE
For our linear regression model we will be calculating the Mean Square Error (MSE).  The MSE is based on the square of the error and the value lies between 0 and infinity.  MSE is used to check how close estimates or forecasts are to actual values. Lower the MSE, the closer is forecast to actual. This is used as a model evaluation measure for regression models and the lower value indicates a better fit.  The smaller the MSE the more accurate the mdoel.

The MSE on the school Type only was 20,236,173.  The MSE on the School Type & Region was 18,556,8339 for our prediction model and 12,961,199 for the test data.

### K-Fold Cross Validation
Cross-validation is a procedure used to avoid overfitting and estimate the skill of the model on new data. The value for k is chosen such that each train/test group of data samples is large enough to be statistically representative of the broader dataset. K-Fold Cross Validation is used because it ensures that every observation from the original dataset has the chance of appearing in training and test set.¶

The 5-Cross Validation accuracy is 0.4988 for our prediction model and 0.2975 for our test data.

## Conclusion
![Distribution Plot of Actual Values vs Predicted Values](https://github.com/5Doppelgangers/Final/blob/main/Images/Distribution%20Graph%20of%20Actual%20Values%20vs%20Predicted%20Values.PNG)
We can see that the actual values and predicted values are different in our train data. The range of the predicted values is lower, however, the mean doesn't look drastically different. Next, we do the same for the 20% test data to see if the outcome is similar.

![Distribution Plot of Predicted values of test data vs Actual values of test data](https://github.com/5Doppelgangers/Final/blob/main/Images/Distribution%20Plot%20of%20Actual%20Values%20vs%20Predicted%20Values%20of%20test%20data.PNG)

The distribution is not very different when comparing the training data and test data.

## Observations



