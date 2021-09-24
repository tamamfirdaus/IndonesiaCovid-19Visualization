# Covid-19 Data Visualization in Indonesia

## Dataset
The dataset is downloaded from https://sinta.ristekbrin.go.id/covid/datasets?page=1 on 18 Sept 2021. Therefore, all the data used in this project is based on them. The Dataset is selected and convert them into two file CSV: "Kasus per Provinsi.csv" and "Timeline Kasus.csv". These files can be found on Dataset folder 

## Data Preparation using SQL
Data Preparation is performed using SQL by importing the csv files into MySQL database. SQL Script that used is located in  "SQL Script" Folder. The script has several queries to clean unnecessary data and select needed data. Then, the needed data is stored on the new tables. The Tables will be wxported to JSON files.

## Visualization using Tableau
I used Tableau Public to visualize the data. The Tableau Public (free) version is not supported to connect into MySQL server. Therefore, I manually import the data using JSON files. These files is saved on "Tableau Data" folder.

The Tableau Public can visualize data with many features. In this project, I used Table, Bar chart, Line chart, and Map to visualize Covivd-19 Data in Indonesia.

## Result
The dashbord of the Covid-19 data visualization can be accessed from this link: 
https://public.tableau.com/app/profile/m.tamamul.firdaus/viz/Covid-19inIndonesia_16324421207910/Dashboard1 