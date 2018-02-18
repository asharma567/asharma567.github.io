10/05/17

Outlier Analysis on dating app data
=====

Got ahold of data from a popular dating app and was asked to employ some effective ML techniques for detecting outliers in the dataset.

{% include toc title="Table of Contents" icon="file-text" %}

### Firstly, what is an outlier?

An outlier is an observation or a set of observations exceptionally far from the mainstream of data. It's either:
1. an extreme case (Anomaly)
2. an error eg typo, measuring error, etc (Noise)

Typically, Analysts/Data Scientist are more interested in (1) Unless we just wanted cleanout Noise, which is also a common use case.

### What to do with outliers?
Depends on the business focus but here are some general routes:

1. remove outliers to strengthen our model and/or insights 
2. study them for insight e.g. fix a measuring error, motivate changes to the model, blog post of a special case, etc.
3. fraud detection

The techniques used for this dataset are as follows--
- Extreme value analysis
- Information theory: PCA    
- Dependency variable error


__bottom line:__ finding outliers/anomalies often depends on the business interest. e.g. building a strong model where outliers just amount to a hinderance in performance vs. studying anomalous cases for insight.

### next steps:
- Clustering in this order:
    1. Tsne to see how well the data clusters i.e. are they disparate data points or do they cluster well.
    2. GMM
    3. DBSCAN



```python
import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.decomposition import PCA
from sklearn.ensemble import RandomForestClassifier

from helpers import plot_no_transformation, plot_optimal_number_of_components_variance
from helpers import score_classifier

import matplotlib.pyplot as plt
%pylab inline
plt.style.use('fivethirtyeight')


import warnings
warnings.filterwarnings('ignore')
```

    Populating the interactive namespace from numpy and matplotlib



```python
df_ratings_sample = pd.read_csv('ratings_sample.tsv', sep='\t')
```

# Extreme value analysis

__Boxplot --__
Theoritically, anything above the top whisker (aprox 43) is an outlier given the distribution is gaussian-like. Though notice a very extreme case: 112 years old and nothing in between - seems suspicious.

_This exercise should be repeated for all features though in interest of time, I've limited it to just this one_


```python
plot_no_transformation(list(df_ratings_sample.player_age))
```

    count    500763.000000
    mean         28.965531
    std           5.164825
    min          18.000000
    25%          25.000000
    50%          28.000000
    75%          32.000000
    max         112.000000
    dtype: float64
    skew --  1.2225473630024877
    kurtosis-- 3.7030868774085564


<a href="/assets/images/analysis2_outliers_files/analysis2_outliers_7_1.png"><img src="/assets/images/analysis2_outliers_files/analysis2_outliers_7_1.png"></a>



```python
df_player_age_outliers = df_ratings_sample[df_ratings_sample.player_age == 112]
df_player_age_outliers
```




<div>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>like</th>
      <th>player_id</th>
      <th>subject_id</th>
      <th>player_age</th>
      <th>player_height</th>
      <th>player_age_max</th>
      <th>player_age_min</th>
      <th>player_distance_max</th>
      <th>player_height_min</th>
      <th>player_height_max</th>
      <th>...</th>
      <th>player_location</th>
      <th>subject_gender_orientation</th>
      <th>subject_hometown</th>
      <th>subject_metro</th>
      <th>subject_location</th>
      <th>distance</th>
      <th>player_saved</th>
      <th>player_rated</th>
      <th>subject_saved</th>
      <th>subject_rated</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>454904</th>
      <td>0.0</td>
      <td>01fc7aa7222451673b2804c97b0034ec0681f105</td>
      <td>212adeb131102c365e07a7cca958895bfb3995a1</td>
      <td>112</td>
      <td>170</td>
      <td>60</td>
      <td>42</td>
      <td>100</td>
      <td>92</td>
      <td>214</td>
      <td>...</td>
      <td>Regal_Heights</td>
      <td>MS</td>
      <td>Ottawa_Ontario</td>
      <td>Toronto</td>
      <td>Greektown</td>
      <td>4.226219</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>107</td>
    </tr>
    <tr>
      <th>454905</th>
      <td>0.0</td>
      <td>01fc7aa7222451673b2804c97b0034ec0681f105</td>
      <td>96178849994686461c71eded66b22a4b0bf962b5</td>
      <td>112</td>
      <td>170</td>
      <td>60</td>
      <td>42</td>
      <td>100</td>
      <td>92</td>
      <td>214</td>
      <td>...</td>
      <td>Regal_Heights</td>
      <td>MS</td>
      <td>Cornwall_Ontario</td>
      <td>Other</td>
      <td>Clairfields</td>
      <td>39.918329</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>82</td>
    </tr>
    <tr>
      <th>454906</th>
      <td>0.0</td>
      <td>01fc7aa7222451673b2804c97b0034ec0681f105</td>
      <td>b15a265754b182df8ed2cd58d12c8c8e4c6cb2ce</td>
      <td>112</td>
      <td>170</td>
      <td>60</td>
      <td>42</td>
      <td>100</td>
      <td>92</td>
      <td>214</td>
      <td>...</td>
      <td>Regal_Heights</td>
      <td>MS</td>
      <td>Colden_New_York</td>
      <td>Buffalo</td>
      <td>Chaffee</td>
      <td>91.142046</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>54</td>
    </tr>
    <tr>
      <th>454907</th>
      <td>0.0</td>
      <td>01fc7aa7222451673b2804c97b0034ec0681f105</td>
      <td>6c17aec12b7c408ee8e708f220261becaa3ab728</td>
      <td>112</td>
      <td>170</td>
      <td>60</td>
      <td>42</td>
      <td>100</td>
      <td>92</td>
      <td>214</td>
      <td>...</td>
      <td>Regal_Heights</td>
      <td>MS</td>
      <td>Buffalo_New_York</td>
      <td>Washington_D.C.</td>
      <td>Annandale</td>
      <td>352.332185</td>
      <td>0</td>
      <td>0</td>
      <td>2</td>
      <td>77</td>
    </tr>
    <tr>
      <th>454908</th>
      <td>0.0</td>
      <td>01fc7aa7222451673b2804c97b0034ec0681f105</td>
      <td>73f153aad08fce26424ce0b04a80562a98af4057</td>
      <td>112</td>
      <td>170</td>
      <td>60</td>
      <td>42</td>
      <td>100</td>
      <td>92</td>
      <td>214</td>
      <td>...</td>
      <td>Regal_Heights</td>
      <td>MS</td>
      <td>Hamilton_Ontario</td>
      <td>Toronto</td>
      <td>Thornhill</td>
      <td>8.720684</td>
      <td>0</td>
      <td>0</td>
      <td>5</td>
      <td>190</td>
    </tr>
    <tr>
      <th>454909</th>
      <td>0.0</td>
      <td>01fc7aa7222451673b2804c97b0034ec0681f105</td>
      <td>33796aafc7f99f324442486c4b285a4f9bff6767</td>
      <td>112</td>
      <td>170</td>
      <td>60</td>
      <td>42</td>
      <td>100</td>
      <td>92</td>
      <td>214</td>
      <td>...</td>
      <td>Regal_Heights</td>
      <td>MS</td>
      <td>Thornhill_Ontario</td>
      <td>Toronto</td>
      <td>Bracondale_Hill</td>
      <td>0.309304</td>
      <td>0</td>
      <td>0</td>
      <td>2</td>
      <td>167</td>
    </tr>
    <tr>
      <th>454910</th>
      <td>0.0</td>
      <td>01fc7aa7222451673b2804c97b0034ec0681f105</td>
      <td>f407df1c89f7b1df1a330225eab42f5b1ecf851a</td>
      <td>112</td>
      <td>170</td>
      <td>60</td>
      <td>42</td>
      <td>100</td>
      <td>92</td>
      <td>214</td>
      <td>...</td>
      <td>Regal_Heights</td>
      <td>MS</td>
      <td>Toronto_Ontario</td>
      <td>Toronto</td>
      <td>Pleasant_View</td>
      <td>8.825765</td>
      <td>0</td>
      <td>0</td>
      <td>11</td>
      <td>105</td>
    </tr>
  </tbody>
</table>
<p>7 rows × 30 columns</p>
</div>



## Duplicate profiles

Examining only the player attributes, it's just a single person. At first blush, it seemed as if this was a fraudulent case considering the distances from the subject however it could very well be a 112 year old woman seeking a (younger) companion.


```python
player_only_features = [name for name in df_ratings_sample.columns if 'player' in name]
df_player_age_outliers[player_only_features].drop_duplicates().T
```




<div>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>454904</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>player_id</th>
      <td>01fc7aa7222451673b2804c97b0034ec0681f105</td>
    </tr>
    <tr>
      <th>player_age</th>
      <td>112</td>
    </tr>
    <tr>
      <th>player_height</th>
      <td>170</td>
    </tr>
    <tr>
      <th>player_age_max</th>
      <td>60</td>
    </tr>
    <tr>
      <th>player_age_min</th>
      <td>42</td>
    </tr>
    <tr>
      <th>player_distance_max</th>
      <td>100</td>
    </tr>
    <tr>
      <th>player_height_min</th>
      <td>92</td>
    </tr>
    <tr>
      <th>player_height_max</th>
      <td>214</td>
    </tr>
    <tr>
      <th>player_gender_orientation</th>
      <td>FS</td>
    </tr>
    <tr>
      <th>player_hometown</th>
      <td>Toronto_Ontario</td>
    </tr>
    <tr>
      <th>player_metro</th>
      <td>Toronto</td>
    </tr>
    <tr>
      <th>player_location</th>
      <td>Regal_Heights</td>
    </tr>
    <tr>
      <th>player_saved</th>
      <td>0</td>
    </tr>
    <tr>
      <th>player_rated</th>
      <td>0</td>
    </tr>
  </tbody>
</table>
</div>



She seems to find interest in males from 42-60. it's interesting she has an age_max cap of 60. Begs the question why?


```python
df_player_age_outliers.subject_age
```




    454904    42
    454905    45
    454906    44
    454907    42
    454908    43
    454909    44
    454910    48
    Name: subject_age, dtype: int64



## Distances from subject

Given the sparsity of users within this age range, it seems you'd have to travel a larger distance to find a match.


```python
df_player_age_outliers.distance.hist()
df_player_age_outliers.distance.mean()
```




    72.21064742857142



<a href="/assets/images/analysis2_outliers_files/analysis2_outliers_14_1.png"><img src="/assets/images/analysis2_outliers_files/analysis2_outliers_14_1.png"></a>



# Information theory: PCA

How compressable is the data? Another technique used to tell whether or not a dataset has outliers is to check how much redundant information it has. By theory, if it has a lot redundant information - there aren't many outliers - it'll compress well. 

In this example, we'll use PCA..




```python

features = [
    'player_age',
    'player_height',
    'player_age_max',
    'player_age_min',
    'player_distance_max',
    'player_height_min',
    'player_height_max',
    'subject_age',
    'subject_height',
    'subject_age_max',
    'subject_age_min',
    'subject_distance_max',
    'subject_height_min',
    'subject_height_max',
    'distance',
    'player_saved',
    'player_rated',
    'subject_saved',
    'subject_rated',
]


scaler = StandardScaler()
scale_feature_collinear_feature_M = scaler.fit_transform(df_ratings_sample[features])

THRESHOLD_FOR_VARIANCE_RETENTION = 0.95
plot_optimal_number_of_components_variance(scale_feature_collinear_feature_M, THRESHOLD_FOR_VARIANCE_RETENTION)
```

    number of components that explain target amt of variance explained: 16 @ 0.961780412622


<a href="/assets/images/analysis2_outliers_files/analysis2_outliers_16_1.png"><img src="/assets/images/analysis2_outliers_files/analysis2_outliers_16_1.png"></a>


<a href="/assets/images/analysis2_outliers_files/analysis2_outliers_16_2.png"><img src="/assets/images/analysis2_outliers_files/analysis2_outliers_16_2.png"></a>


    16



## Finding the number of components to retain

Given that there are 19 total features and in order to retain 95% of the variance we can only lose 3 components, we can conclude the dataset is fairly disperse. It doesn't mean it necessarily has a lot of outliers but it means there isn't a lot of redundancy in the data.

We can see this examining the scree plot just above. In a dataset that's highly compressable we would see a stark hockey stick like drop making a sharp angle (an elbow). It's at this point it's yields the optimal number of components to retain.

Another method to figure out the number of components to retain is Kaiser's rule. It finds the point at which each additional components contribution to information (variance) is marginal. It's 91.7% indicated by the blue line.

Potential next steps--

1. Retain full number of components post transformation then find the centroid/medoid and compute distances of all examples from the centroid and score the furthest ones as outliers.
2. Extreme Value Analysis - just like above - on each of the components and remove outliers.
3. Using a wrapper function, find the optimal number of components to retain by model performance. That is, grid-search the number of components to retain. This method assumes our main concern is model performance and not intrepretation of causality from features.

Pros: quick and dirty implementation possible with minimal analysis
Cons: Loss of interpretation of features say if you wanted to study outliers.

__*Note, PCA is a function of features as opposed to examples/observations. Meaning it might better at pruning outliers from a feature's perspective vs distance from other examples.__

# Dependency variable error

This method involves fitting a model to the dataset and computing the prediction errors of all the examples originally trained on and inspecting the cases with the highest errors. Assuming the model's reliable, these cases of uncertaintly could be interesting for a variety of reasons at the minimum providing insight as to where the model's weak.



```python


labels = df_ratings_sample.like == 1.0
X = df_ratings_sample[features]

rf = RandomForestClassifier(
    n_jobs=-1, 
    class_weight='balanced_subsample', 
    random_state=40).fit(X, labels)

mean_roc_auc_score = score_classifier(rf, X, labels)[0]
mean_roc_auc_score, sum(labels)/len(labels)
```




    (0.83261574188601062, 0.17553014100482664)



With Mean Roc AUC of 83 we can say the model's fairly discriminative (reliable). That is, the model's correct 83% of the time it makes a prediction. Though we have a class imbalance issue with likes only comprising 17.5% of the data.


### How's the class imbalance addressed?
- For purposes of speed, I'm adjusting the classweights to penalize missclassifications for the minority to be higher.
- stratified bootstrap sampling for training trees.
- stratified sampling without replacement for 5-fold cross validation.


### Why is Random forest a good base model for this technique?
- It handles outliers well, that is it maintains the attributes of tree based models which make it robust in discrimination while also being robust to outliers by design: An independent ensemble of Trees. This is superior to a sequential ensemble (Boosting) which is famed for best classifiers to date.
- interpretability (see below)



```python
scores = rf.predict_proba(X)
probability_of_true = pd.Series(scores[:,1])
probability_of_true.hist(bins=30)
probability_of_true.value_counts(1).sort_index()
```




    0.0    0.576928
    0.1    0.167886
    0.2    0.055352
    0.3    0.018528
    0.4    0.008333
    0.5    0.010290
    0.6    0.020153
    0.7    0.034384
    0.8    0.043699
    0.9    0.040991
    1.0    0.023456
    dtype: float64



<a href="/assets/images/analysis2_outliers_files/analysis2_outliers_21_1.png"><img src="/assets/images/analysis2_outliers_files/analysis2_outliers_21_1.png"></a>


We can see at 0.4 only 0.8% of examples fall into this area. This makes for a good starting point. Though the reality is we'd want to investigate everything from 0.4-0.6: 
1. classifier is on the fence with a decision
2. it comprises a minority group

A good starting point of investigation of such features is to use the feature importance plot showed in the previous analysis and figure out how/why the datapoints differ from the rest in the most important categories the model uses for it's prediction.


```python
f, (ax1, ax2, ax3) = plt.subplots(1, 3)

cohort_idx = probability_of_true[probability_of_true == 0.0].index
df_certain_false = X.ix[cohort_idx]
df_certain_false.subject_saved.hist(bins=50, alpha=0.4, ax=ax1)
df_certain_false.subject_rated.hist(bins=50, alpha=0.4, color='red', ax=ax1)


cohort_idx = probability_of_true[probability_of_true == 0.4].index
df_uncertain = X.ix[cohort_idx]
df_uncertain.subject_saved.hist(bins=50, alpha=0.4, ax=ax2)
df_uncertain.subject_rated.hist(bins=50, alpha=0.4, color='red', ax=ax2)


cohort_idx = probability_of_true[probability_of_true == 1.0].index
df_certain_false = X.ix[cohort_idx]
df_certain_false.subject_saved.hist(bins=50, alpha=0.4, ax=ax3, label='saved')
df_certain_false.subject_rated.hist(bins=50, alpha=0.4, color='red', ax=ax3, label='rated')
plt.legend(loc=9, bbox_to_anchor=(0.5, -0.1), ncol=2)
plt.suptitle('low-moderate-high chance of liking subject: saved/rated ratio')
plt.tight_layout(pad=1.8)

```

<a href="/assets/images/analysis2_outliers_files/analysis2_outliers_23_0.png"><img src="/assets/images/analysis2_outliers_files/analysis2_outliers_23_0.png"></a>


### Saved to Rated ratio

The amount of the space the blue occupies vs red indicates subjects with a higher ratio tend have a higher chance of being liked. Not suprising but it's always nice to have supportive evidence of data.

It also warns us of releasing a model trained on such patterns and consequences for those unpopular individuals. The same people will be recommended over and over - this isn't good policy for various reasons. To combat this a couple solutions come to mind: 
1. remove the feature altogether or down-weight the importance.
2. ensemble models and limit the recommendations from this model. 
3. select a few subjects completely at random for a few slots in the recommendation.




```python
errors = pd.Series(labels.astype(float) - scores[:,1])
errors.hist(bins=30)


plt.suptitle('error plot')
errors.value_counts().sort_index()
```




    -0.9         1
    -0.8         5
    -0.7        24
    -0.6       113
    -0.5       609
    -0.4      2603
    -0.3      8889
    -0.2     27651
    -0.1     84065
     0.0    300650
     0.1     20526
     0.2     21878
     0.3     17194
     0.4      9979
     0.5      4544
     0.6      1570
     0.7       389
     0.8        67
     0.9         6
    Name: like, dtype: int64



<a href="/assets/images/analysis2_outliers_files/analysis2_outliers_25_1.png"><img src="/assets/images/analysis2_outliers_files/analysis2_outliers_25_1.png"></a>


This is an interesting case because the model was fairly certian this would be a "like" based on the pattern it's learned but that's clearly not the case.

It's not clear as why this player didn't like this particular subject however, it does seem like the subject's new to the platform given she's only been rated 13 times. Maybe the model doesn't do well with new players on the platform. At a time_been_on_platform may solve this issue.


```python
anomaly_idx = errors[errors == -0.9].index
print (probability_of_true[anomaly_idx])
df_ratings_sample.ix[anomaly_idx].T
```

    40734    0.9
    dtype: float64





<div>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>40734</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>like</th>
      <td>0</td>
    </tr>
    <tr>
      <th>player_id</th>
      <td>f9d0c627287ed0f52fbf2c09fdc336c73931da3c</td>
    </tr>
    <tr>
      <th>subject_id</th>
      <td>e43761fd1f10b6fba0e804b9de9e8e494e03a7e1</td>
    </tr>
    <tr>
      <th>player_age</th>
      <td>34</td>
    </tr>
    <tr>
      <th>player_height</th>
      <td>185</td>
    </tr>
    <tr>
      <th>player_age_max</th>
      <td>33</td>
    </tr>
    <tr>
      <th>player_age_min</th>
      <td>28</td>
    </tr>
    <tr>
      <th>player_distance_max</th>
      <td>100</td>
    </tr>
    <tr>
      <th>player_height_min</th>
      <td>92</td>
    </tr>
    <tr>
      <th>player_height_max</th>
      <td>214</td>
    </tr>
    <tr>
      <th>subject_age</th>
      <td>29</td>
    </tr>
    <tr>
      <th>subject_height</th>
      <td>165</td>
    </tr>
    <tr>
      <th>subject_age_max</th>
      <td>35</td>
    </tr>
    <tr>
      <th>subject_age_min</th>
      <td>27</td>
    </tr>
    <tr>
      <th>subject_distance_max</th>
      <td>100</td>
    </tr>
    <tr>
      <th>subject_height_min</th>
      <td>92</td>
    </tr>
    <tr>
      <th>subject_height_max</th>
      <td>214</td>
    </tr>
    <tr>
      <th>player_gender_orientation</th>
      <td>MS</td>
    </tr>
    <tr>
      <th>player_hometown</th>
      <td>Halifax_Nova_Scotia</td>
    </tr>
    <tr>
      <th>player_metro</th>
      <td>Toronto</td>
    </tr>
    <tr>
      <th>player_location</th>
      <td>Greenwood_-_Coxwell</td>
    </tr>
    <tr>
      <th>subject_gender_orientation</th>
      <td>FS</td>
    </tr>
    <tr>
      <th>subject_hometown</th>
      <td>Halifax_Nova_Scotia</td>
    </tr>
    <tr>
      <th>subject_metro</th>
      <td>Toronto</td>
    </tr>
    <tr>
      <th>subject_location</th>
      <td>Old_Town</td>
    </tr>
    <tr>
      <th>distance</th>
      <td>2.46799</td>
    </tr>
    <tr>
      <th>player_saved</th>
      <td>14</td>
    </tr>
    <tr>
      <th>player_rated</th>
      <td>141</td>
    </tr>
    <tr>
      <th>subject_saved</th>
      <td>3</td>
    </tr>
    <tr>
      <th>subject_rated</th>
      <td>13</td>
    </tr>
  </tbody>
</table>
</div>



## Extensions of this technique:

- __Voting committee__: using an ensemble of various other models trained on the same dataset, identify the examples which have the highest disagreeability among the classifiers.


- __Attribute-wise Learning for Scoring Outliers (ALSO)__: Repeating this exercise, iterating through all variables as dependent. From learning weights to identify features which are most relevant. In addition, an analyst could supply an arbitrary weighting scheme.


- __Insight__: given the binary nature of this problem, an analyst could easily figure out the causal factors relating likes such as the ratio up above but also point out rare cases which are exempt from main/trivial set of deciding factors. This is done by interpreting the decision path from the trained trees.

