# Final

Link to Final Project Storyboard:
[Storyboard](https://docs.google.com/presentation/d/1ht1hk_sn-CiX-J2YzO6DiYDozsI42h3W94YKDzSpz-c/edit#slide=id.gb247753075_0_50)

Link to Google Slides Presentation:
[GoogleSlideshowPresentation](https://docs.google.com/presentation/d/1yfVP8bKyJE5PCutWW47kCMDtD_pFFnz2kcA6OhGqN6s/edit#slide=id.p)

Links to Machine Learning Citations:
[GradientBoostingRegression](https://scikit-learn.org/stable/auto_examples/ensemble/plot_gradient_boosting_regression.html)
[ComparingRegressionModels](https://www.kaggle.com/ankitjha/comparing-regression-models/comments)
[ArticlePredictiveModelsofStudentCollegeCommitment](https://www.mdpi.com/2306-5729/4/2/65/htm)

## Introduction

Our team name is 5Doppelgangers and our selected topic is "Where it pays to go to college?" where we will look at entry level and mid tier salary by percentiles for states within the US based on the college attended. Our data comes from Kaggle, as Kaggle is a trustworthy site with a lot of interesting datasets that was recommended by our TA. Our data comes in the form of CSV files pulled directly from the Kaggle website. Questions that we hope to answer with the data include, but are not limited to, the following: 

1. Which school had the highest paid graduates? Can we predict, based on school, what a person's salary will likely be regardless of major?
2. Which state within the US pays the highest salaries to graduates from each school? Can we predict, based on a person's school and region, what they will likely make upon graduation? 

## Communication Protocol 

Our team will utilize Slack as the main form of communication. For emergencies, or in case of Slack malfunctioning, team members will text each other via cell phone or can connect via Linkedin messaging/email. 

## Data Exploration
### Preliminary Data Preprocessing
- In the preliminary data preprocessing we removed the dollar signs and commas from our salary values.  We also removed all columns from the data set that we weren’t using.
### Preliminary Feature Engineering & Preliminary Feature Selection
- We kept our features data (School Type) and target (Starting Median Salary) as our hypothesis was that we could predict starting salary based on school type.
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



