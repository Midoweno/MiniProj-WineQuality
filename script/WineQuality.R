#Wine-Quality Dataset Mini-Exercise
library(dplyr)

#Step 1:
#  Download both CSV files.
#  Load them into R as separate data frames.
#  Inspect the first few rows to understand the columns.

    setwd("/Users/renoguo/Documents/wine+quality")
    red <- read.csv("winequality-red.csv", sep = ";", header = TRUE)
    white<-read.csv("winequality-white.csv", sep=";",header=TRUE)

# Step 2
#   Combine red and white wine data into one data frame.
#   Add a new column indicating wine type (red / white).

    red$Type<-"Red"
    white$Type<-"White"
    comb<-rbind(red,white)

# Step 3 — Extract columns of interest
#   Identify columns that are mean/std-like measures (e.g., alcohol content, acidity).
#   Create a subset of the data containing only those columns + wine type + quality.
#     My interests include the following columns:
      # Fixed Acidity
      # pH
      # Alcohol
      # Quality (out of 10)
      
    int<-comb%>%
      select(fixed.acidity,pH,alcohol,quality,Type)
    
# Step 4 — Clean and label
#  Ensure column names are descriptive and readable (replace underscores, lowercase).
#  Replace numeric quality scores with labels if desired (e.g., low, medium, high).
    
    colnames(int)[1]<-"Fixed Acidity"
    colnames(int)[3]<-"Alcohol"
    colnames(int)[4]<-"Quality"    

    play<-int
    play$Quality <- cut(
      play$Quality,
      breaks = c(-Inf, 3, 7, 10),
      labels = c("Low", "Medium", "High")
    )
    
# Step 5 — Summarize
  # Create 3 summary tables:
  # Average quality per wine type
  # Average alcohol content per quality level
  # Average pH per wine type and quality level
    
    quality_per_wine<-int%>%
      group_by(Quality)%>%
      summarize(mean)
    
      

    
    
    
    