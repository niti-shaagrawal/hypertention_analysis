# Dataset
 Link for Dataset- https://www.kaggle.com/datasets/siva543/hypertension-data

![hyimage](https://github.com/niti-shaagrawal/hypertention_analysis/assets/152295238/b84de02e-94ab-4591-b9df-b9f4dc940add)
 
## About the dataset:

This dataset contains medical information related to hypertension and cardiovascular health. Each row represents data for a single patient, including demographic information, medical measurements, and diagnostic test results.

### Fields Description:

1. **age (int)**: The age of the patient in years.
2. **sex (int)**: The gender of the patient. (Typically 0 for female and 1 for male, but confirm with the dataset documentation.)
3. **cp (int)**: Type of chest pain experienced by the patient. Commonly encoded as:
   - 0: No chest pain
   - 1: Typical angina
   - 2: Atypical angina
   - 3: Non-anginal pain
4. **trestbps (int)**: Blood pressure level of the patient in mmHg.
5. **chol (int)**: Cholesterol level of the patient in mg/dL.
6. **fbs (int)**: Indicator if the patient's fasting blood sugar level is greater than 120 mg/dL. (0: No, 1: Yes)
7. **restecg (int)**: Resting electrocardiographic results. Commonly encoded as:
   - 0: Normal
   - 1: Having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV)
   - 2: Showing probable or definite left ventricular hypertrophy by Estes' criteria
8. **thalach (int)**: The maximum heart rate achieved by the patient during exercise in beats per minute.
9. **exang (int)**: Indicator if the patient experienced exercise-induced angina. (0: No, 1: Yes)
10. **oldpeak (double)**: ST depression induced by exercise relative to rest (a measure of ischemia).
11. **slope (int)**: The slope of the peak exercise ST segment. Commonly encoded as:
    - 0: Upsloping
    - 1: Flat
    - 2: Downsloping
12. **ca (int)**: The number of major vessels (0-3) colored by fluoroscopy.
13. **thal (int)**: Type of defect observed in the heart scan. Commonly encoded as:
    - 0: No defect
    - 1: Normal defect
    - 2: Fixed defect
    - 3: Reversible defect
14. **target (int)**: Indicator if the patient has hypertension. (0: No, 1: Yes)

### Potential Uses of the Dataset

This dataset can be used for various analyses and applications such as:

- **Descriptive Statistics**: Understanding the distribution and central tendencies of each field.
- **Correlation Analysis**: Exploring relationships between different variables, such as age and blood pressure, cholesterol levels and heart rate, etc.
- **Predictive Modeling**: Building models to predict outcomes like the presence of hypertension or risk of heart disease based on the other variables.
- **Comparative Studies**: Comparing different subgroups within the dataset, such as patients with and without hypertension, or different types of chest pain.

## Dashboard:
![Screenshot 2024-06-27 232246](https://github.com/niti-shaagrawal/hypertention_analysis/assets/152295238/1df39d83-b04d-4c5b-9de5-8496c2c6461e)

Link for Power Bi dashboard-https://rjcdu-my.sharepoint.com/:u:/g/personal/21195042_ramjas_edu_du_ac_in/ETbeAZ3293xIrh-PAcfBXZcBTX-AoliXDmF6kjzBSHq-tw?e=v6pRE8

## Insights gathered-

Below I will show the results of some SQL queries I conducted and provide explanations of the patterns and trends I found throughout the analysis. 

1.
![Screenshot 2024-06-28 143153](https://github.com/niti-shaagrawal/hypertention_analysis/assets/152295238/417f868a-0974-4529-8a4c-a3d2de12406c)

This output illustrates how chest pain is distributed among the patients. It shows that most patients experiencing chest pain have atypical angina, while the fewest have non-anginal chest pain.

2.
![Screenshot 2024-06-28 144016](https://github.com/niti-shaagrawal/hypertention_analysis/assets/152295238/ca959d66-deb6-40d1-8dd9-aead7181c998)

This data presents the average blood pressure and cholesterol levels of the patients. The average blood pressure among the patients is 131.59 mm Hg, exceeding the normal upper limit for blood pressure. Additionally, the average cholesterol level is 246.29 mg/dL, well above the normal threshold of 200 mg/dL.

3. 
![Screenshot 2024-06-28 144725](https://github.com/niti-shaagrawal/hypertention_analysis/assets/152295238/d2001def-9d73-4a6d-8d55-0a42323d351c)

This analysis illustrates the impact of hypertension on the average age of patients. It indicates that individuals without hypertension tend to have a life expectancy approximately one year longer than those affected by hypertension.

4.
![Screenshot 2024-06-28 145020](https://github.com/niti-shaagrawal/hypertention_analysis/assets/152295238/80944b98-11d1-4689-87aa-745783029155)

This analysis demonstrates the impact of exercise-induced angina on the average maximum heart rate of patients. The results highlight a significant difference between the two groups, with individuals without exercise-induced angina exhibiting a more typical and lower heart rate compared to those experiencing this condition.

5.
![image](https://github.com/niti-shaagrawal/hypertention_analysis/assets/152295238/497b41a0-43de-4788-b5bb-f79d2f841cb3)

The table above illustrates the combined distribution of chest pain and hypertension among the dataset. A majority of individuals in the database experience both chest pain and hypertension. Additionally, there are more individuals with hypertension but no chest pain compared to those experiencing chest pain without hypertension.

 6.
![Screenshot 2024-06-28 145659](https://github.com/niti-shaagrawal/hypertention_analysis/assets/152295238/e9404c7b-1865-463c-bae0-a1a660486ad6)

This table depicts the correlation between chest pain and the likelihood of depression among patients. Individuals without chest pain and those with non-anginal chest pain show a higher tendency towards experiencing depression.

7.
![Screenshot 2024-06-28 145923](https://github.com/niti-shaagrawal/hypertention_analysis/assets/152295238/1024a836-0ac5-4575-8576-5c1e6582acad)

This table illustrates the distribution of age alongside blood pressure and cholesterol levels. It indicates that both cholesterol and blood pressure tend to increase with age.

## Conclusion -
Based on the insights gathered from the data, it is evident that age correlates positively with both blood pressure and cholesterol levels. Additionally, the presence of hypertension significantly influences average age, while the occurrence of exercise-induced angina notably impacts maximum heart rates among patients. These findings underscore the interplay of cardiovascular health factors with age and specific conditions.
