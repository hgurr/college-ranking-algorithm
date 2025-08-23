########################################################################
## Title: 
## Author: https://github.com/hgurr
## Date: 04-06-2024
## Description:
##
##   Based on: college_sample.csv dataset.
########################################################################

# Set Working Directory #
setwd("C:/Users/...") # Replace the content within the quotes with your selected working directory
getwd()

# Load Required Packages #
library(readr)

# Import and Explore Dataset #
uni <- read_csv("college_sample.csv")
# Quick Data Overview
str(uni)
head(uni)

# Target Group #
# Affluent international female students seeking high-quality, coeducational universities or colleges (non-historically women's institutions).

# Define Variables of Interest #
# 1. "FAMINC" - Mean family income of students
# 2. "UGDS_NRA" - Proportion of international students
# 3. "D150_4_NRA" - Graduation rate of international students
# 4. "WOMENONLY" - Not historically women's college (0 = NO, 1 = YES)

# Filter Dataset Frame: Not Historically Women's College #
uni <- uni[which(uni$WOMENONLY == 0),]

# Weighted Algorithm (1) #
uni$Rank1 <- (.25)*uni$FAMINC + (.35)*uni$UGDS_NRA + (.35)*uni$D150_4_NRA + (.05)*uni$WOMENONLY

# Top 25 Institutions (1) #
uniR1 <- uni[order(-uni$Rank1),]
uniR1$INSTNM[1:25]
## Save Model 
Model1_Index <- uniR1[,1]

# --------------------
# Sensitivity
# --------------------

# Excluding Mean Family Income of Students #
# Weighted Algorithm (2) #
uni$Rank2 <- + (.35)*uni$UGDS_NRA + (.35)*uni$D150_4_NRA + (.05)*uni$WOMENONLY

# Top 25 Institutions (2) #
uniR2 <- uni[order(-uni$Rank2),]
uniR2$INSTNM[1:25]
## Save Model
Model2_Index <- uniR2[,1]

# Excluding Proportion of International Students #
# Weighted Algorithm (3) #
uni$Rank3 <- (.25)*uni$FAMINC + (.35)*uni$D150_4_NRA + (.05)*uni$WOMENONLY

# Top 25 Institutions (3) #
uniR3 <- uni[order(-uni$Rank3),]
uniR3$INSTNM[1:25]
## Save Model
Model3_Index <- uniR3[,1]

# --------------------
# Face Validity
# --------------------

# Model 1 & Model 2 #
uni$Dif1_2 <- abs(Model1_Index - Model2_Index)
mean(unlist(uni$Dif1_2))

# Model 1 & Model 3 #
uni$Dif1_3 <- abs(Model1_Index - Model3_Index)
mean(unlist(uni$Dif1_3))
