# real_estate_analysis


# Overview

In this project, I analyze real estate data to get insight and find if there is a correlation between property age, rent, the amount deposited, and features. 

# Findings 

The data contains 4930 property, and 22826 unique prospects. 
Which means on average, each property is sought after by an average of 4 prospects.
avg = 22826/4930

<br/>

* From these properties, the average deposit is 
$83,128,441

* the average monthly rent is $1,052,041 

* the average room quantity is 1.471 and the max is 5

* Out of the 4930 properties 3188 does not have an elevator and 1725 has one while there is no data for the other 17. 
* The average year is 13.65

<br/>

Residuals:
      Min        1Q    Median        3Q       Max 
 -3738764   -643098   -218810    266749 141234604 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)       7.173e+05  1.888e+05   3.799 0.000147 ***
room_qty          9.586e+05  1.017e+05   9.424  < 2e-16 ***
deposit          -1.676e-02  1.151e-03 -14.564  < 2e-16 ***
has_elevatorTRUE  6.401e+05  1.340e+05   4.777 1.83e-06 ***
property_age      6.884e+03  7.356e+03   0.936 0.349402    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3718000 on 4908 degrees of freedom
  (17 observations deleted due to missingness)
Multiple R-squared:  0.04506,	Adjusted R-squared:  0.04428 
F-statistic:  57.9 on 4 and 4908 DF,  p-value: < 2.2e-16
<br/>

Using linear regression, can see the relationship between the monthly rent and other features. 
The number of room, or deposit put by the prospect, or features like if the property has elevator or not
are statistically significant, but the property age is not. 

<br/>
These prelimary stats showed that these properties are high end real estates. Most likely sought by wealthy individuals. 
As the average of the room is less than 2, I gather they are not residential properties in the suburbs. More likely in big cities. 

This plot shows that the most recent properties have elevators. 

![Elevator_age](https://user-images.githubusercontent.com/86452750/162046533-e402f02d-512c-41e2-9e00-1d635b2d1609.png)
<br/>
This plot shows the relationship between the number of rooms and the property age.
Most properties are consistent over time which indicates there wasn't much innovation in terms of construction. 
Some outliers for houses over 50 years and more than 3 rooms .

![RoomQTY_Age](https://user-images.githubusercontent.com/86452750/162046584-c1f22769-b22d-4965-8942-944f68bbfc88.png)


# Summary 

The data tells about the type of clients that are considered prospects. It also gives a glimpse into understanding the type of constructions they are. 
The data is limited as there is no certainty as to what are the type of properties (apartments, city location, suburbs). The limit on location does not 
allow a full analysis because I can't cross reference the location, compared to the properties seen and by how many prospects. 
