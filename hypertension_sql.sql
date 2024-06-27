select * 
from cleaned_hypertension;

-- average age of patients
select 
round(avg(age),2) as avg_age,
count(*) as no_of_patients
from cleaned_hypertension
group by age
order by avg_age;

-- distribution of sex among patients
select 
sex,
count(*) as no_of_patients
from cleaned_hypertension
group by sex;

-- distribution of chest pain among the patients 
select
`chest pain`,
count(*) as no_of_patients
from cleaned_hypertension
group by `chest pain`;

-- average blood pressure and cholestrol level of patients 
select 
round(avg(bp),2) as avg_bp,
round(avg(cholestrol),2) as avg_cholestrol
from cleaned_hypertension;


-- percentage of patinets having a sugar level greater rhan 120
select 
(count(case when `sugar level>120`=1 then 1 end)*100/count(*)) as 'per_of_suger>120'
from cleaned_hypertension;

-- avergae maximum haert rate achieved by the patients
select 
round(avg(`max heart rate`),2) as avg_max_heartrate
from cleaned_hypertension;

-- how many patients experiece exercise induced angina
select 
count(*) as no_of_people,
count(case when `exercise angina`=1 then 1 end) as people_with_ex_angina,
count(case when `exercise angina`=0 then 1 end) as poeple_without_ex_angina,
(count(case when `exercise angina`=1 then 1 end)*100/count(*)) as per_with_ex_angina,
(count(case when `exercise angina`=0 then 1 end)*100/count(*)) as per_without_ex_angina
from cleaned_hypertension;

-- average depression level among patients
select 
round(avg(depression),2) as avg_depression
from cleaned_hypertension;

-- no of people with depression in different intervals
select 
count(*) as no_of_people,
case
when depression between 0 and 2 then '0-2'
when depression between 2 and 4 then '2-4'
else 'above 4'
end as depp_class
from cleaned_hypertension
group by depression;

-- distribution of slope of peak exercise
select
`slop of peak exercise`,
count(*) as no_of_patients
from cleaned_hypertension
group by `slop of peak exercise`;

-- distribution of defects 
select 
count(*) as no_of_patients,
case
when defect = 1 then 'normal defect'
when defect = 2 then 'fixed defect'
when defect = 3 then 'reversable defect'
end as type_of_defect
from cleaned_hypertension
where defect <> 0
group by defect;

-- how many patinets have hypertension 
select 
count(case when hypertension=1 then 1 end) as people_with_hp,
count(case when hypertension=1 then 1 end)*100/count(*) as per_with_hp
from cleaned_hypertension;

-- distribution of number of vessels colored by fluroscopy
select 
count(*) as no_of_people,
`no. of major vessels` as no_of_vessels_coloured
from cleaned_hypertension
group by `no. of major vessels`;

-- effect of hypertension on the average age of patients  
select 
case
when hypertension=1 then 'hypertension'
when hypertension=0 then 'no hypertension'
end as hypertension_status,
round(avg(age),2) as avg_age
from cleaned_hypertension
group by hypertension;

-- distribution of ecg results among patients 
select
case
when `resting ECG`=0 then 'normal'
when `resting ECG`=1 then 'T- wave abnoramilty'
end as ECG_status,
count(*) as no_of_poeple
from cleaned_hypertension
where `resting ECG` <> 2
group by `resting ECG`;

-- how does the average maximum heart rate differ between patients with and without exercise-induced angina
select 
round(avg(`max heart rate`),2) as avg_max_heartrate,
case
when `exercise angina`=0 then 'no exercise induced angina'
when `exercise angina`=1 then 'exercise induced angina'
end as angina_status
from cleaned_hypertension
group by `exercise angina`;

-- how does depression level vary with the slope of peak exercise
select 
round(avg(depression),2) as avg_depression,
case
when `slop of peak exercise` =0 then 'upsloping'
when `slop of peak exercise`=1 then 'flat'
else 'downslopping'
end as slope_status
from cleaned_hypertension
group by `slop of peak exercise`;

-- average age of patients with a sugar level greater than 120
select 
round(avg(age),2) as avg_age,
count(case when `sugar level>120` =1 then 1 end) as 'people_with_sugar>120'
from cleaned_hypertension;

-- patients with chest pain also having hypertension
select 
case 
when `chest pain`=0 then 'no chest pain'
else 'chest pain'
end as chest_pain_status,
case 
when hypertension =0 then 'no hypertension'
else 'hypertension'
end as hypertension_status,
count(*) as no_of_people
from cleaned_hypertension
group by chest_pain_status, hypertension_status;

-- average chance of depression with patients of different types of chest pain 
select
`chest pain`,
round(avg(depression),2) as chance_of_depression
from cleaned_hypertension
group by `chest pain`;

-- how does the distribution of the number of major vessels coloured by fluroscopy differ between patients with and without hypertension
select 
case 
when `hypertension`=0 then 'no hypertension'
else 'hypertension'
end as hypertension_status,
`no. of major vessels` as no_of_blood_vesseles,
count(*) as no_of_people
from cleaned_hypertension
group by `no. of major vessels`, hypertension_status;

-- distribution of slope of peak exercise with maximum heart rate 
select 
case 
when `slop of peak exercise` =0 then 'upsloping'
when `slop of peak exercise` =1 then 'flat'
else 'downsloping'
end as 'slope_status',
round(avg(`max heart rate`),2) as avg_max_heartrate 
from cleaned_hypertension
group by slope_status;

-- distribution of age with blood pressure and cholestrol rates
select 
case
when age between 10 and 20 then '11-20'
when age between 20 and 30 then '20-30'
when age between 30 and 40 then '30-40'
when age between 40 and 50 then '40-50'
when age between 50 and 60 then '50-60'
when age between 60 and 70 then '60-70'
when age between 70 and 80 then '80-90'
else 'above 90'
end as age_status,
round(avg(bp),2) as avg_bp,
round(avg(cholestrol),2) as avg_cholestrol
from cleaned_hypertension
group by age_status
order by age_status