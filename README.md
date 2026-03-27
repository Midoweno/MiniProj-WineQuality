# Wine Quality Mini-Project

 Hello! :) Welcome to my mini-project, where I use the **Wine Quality dataset** ([UCI Repository](https://archive.ics.uci.edu/dataset/186/wine+quality)) to practice **data cleaning, transformation, and exploratory analysis** in R. In this project, I practiced skills I learned during the "Getting and Cleaning Data" JHU Coursera course.  

## Here is a Brief Overview

I came up with the following instructions, modeled off of the "Getting and Cleaning Data" Course project. My script, in the "script" folder does the following:

- **Combine datasets**: red and white wine CSVs with a `Type` column  
- **Clean & subset columns**: Fixed Acidity, pH, Alcohol, Quality  
- **Label Quality**: Low / Medium / High  
- **Summarize**:
  - Average quality per wine type  
  - Average alcohol per quality level  
  - Average pH per type & quality  
- **Export**: tidy CSVs (`TidyWineQuality.csv`, `TidyWineQualityByLevels.csv`)

## File Structure
MiniProj-WineQuality/
├─ data/ # raw CSVs
├─ scripts/ # R analysis script
├─ output/ # cleaned datasets
README.md


## How to Run
1. Open `WineQuality.R` in R/RStudio  
2. Set working directory to project "data" folder
3. Run script → outputs written to working directory

## Packages Used

- `dplyr`
- Base R (`read.csv`, `hist`, `boxplot`) — import & visualization  
