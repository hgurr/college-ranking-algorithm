# College Ranking for Affluent International Female Students

## Abstract
- **Target Group**:
- **Conclusion**:
- **Tools**: R, RStudio, readr
- **Skills**: Data filtering, ranking algorithm design, weighting models, face validity assessment, sensitivity analysis

---

## Project Overview

This project constructs a custom college ranking tailored to **affluent international female students** who are seeking **non-historically women-only colleges** in the United States. The analysis identifies top institutions by assigning weights to variables deemed important to this demographic — including socioeconomic environment, international representation, and graduation outcomes.

A total of three models were created to examine sensitivity to variable exclusion, with final rankings assessed for **face validity**.

---

## Target Group

> **Affluent international female students seeking high-quality, coeducational universities or colleges (non-historically women's institutions).**

---

## Methodology

- **Dataset**: `college_sample.csv`
- **Language**: R
- **Environment**: RStudio
- **Packages**:
  - `readr` for CSV handling

### Key Variables

| Variable Name     | Description                                                                 |
|-------------------|-----------------------------------------------------------------------------|
| `FAMINC`          | Numeric variable indicating the mean family income of enrolled students; used as a proxy for institutional affluence and prestige |
| `UGDS_NRA`        | Proportion variable representing the share of undergraduate students who are international (nonresident aliens) |
| `D150_4_NRA`      | Proportion variable indicating the 4-year graduation rate for international students |
| `WOMENONLY`       | Categorical variable indicating whether the institution is historically women-only (`1` = Yes, `0` = No) |

---

### Filtering Criteria

To focus exclusively on **coeducational institutions**, the dataset was filtered using the `WOMENONLY` variable to exclude historically women-only colleges.

The resulting filtered dataset is stored in a new data frame called **`uni`**, which includes only the following institution type:

- Not historically women-only (`WOMENONLY == 0`)

This subset (`uni`) was used for all ranking models, sensitivity analyses, and face validity assessments tailored to affluent international female students.

---

## Core Analysis

### Weighting Strategy  

Each variable was assigned a weight based on its relevance to the target group:

| Variable                         | Weight |
|----------------------------------|--------|
| Mean Family Income (`FAMINC`)    | 25%    |
| Proportion Intl. Students (`UGDS_NRA`) | 35%    |
| Grad Rate Intl. Students (`D150_4_NRA`) | 35%    |
| Non-Historical Women’s College (`WOMENONLY`) | 5%     |

#### Justification

- **WOMENONLY**: Weighted at 5% because only 38 out of 2,109 institutions were historically women-only — exclusion is necessary but not a dominant factor.
- **FAMINC**: Acts as a proxy for institutional prestige and socioeconomic status, which may align with affluent students' expectations.
- **D150_4_NRA**: Reflects institutional support and success of international students.
- **UGDS_NRA**: Indicates cultural diversity and global inclusiveness — highly important to international students.
---

## Conclusion

---

## Limitations

---

## How to Run

1. **Install R and RStudio**
   - [R Download](https://cran.r-project.org/)
   - [RStudio Download](https://posit.co/download/rstudio-desktop/)

2. **Clone the Repository**
   ```bash
   git clone https://github.com/hgurr/college_ranking_algorithms.git
   cd college_ranking_algorithms

3. **Open `college_ranking_algorithms.R` in RStudio**

4. **Install Required Packages**
   ```bash
   install.packages("readr")
5. **Run the Script**

Ensure college_sample.csv is in your working directory.
- Click **Source** to run the whole script, or
- Run line-by-line for step-by-step execution

---

## Project Structure
   ```bash
college_ranking_algorithms/
├── college_ranking_algorithms.R         # Main R analysis script
├── college_sample.csv                   # Dataset
├── college_sample_codebook.pdf          # Dataset codebook
└── README.md                            # Documentation and summary
