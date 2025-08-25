# College Ranking for Affluent International Female Students

## Abstract
- **Target Group**: Affluent international female students seeking high-quality, coeductional (non-historically women-only) institutions in the United States.
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
| `UGDS_NRA`        | Proportion variable representing the share of undergraduate students who are international |
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

# Model 1 
1. University of Phoenix-Arizona
2. Purdue University-Main Campus
3. University of Illinois at Urbana-Champaign
4. Michigan State University
5. New York University
6. Boston University
7. Colorado Heights University
8. Pennsylvania State University-Main Campus
9. University of Washington-Seattle Campus
10. University at Buffalo
11. Indiana University-Bloomington
12. The New School
13. Divine Word College
14. Northeastern University
15. Manhattan School of Music
16. Lincoln University
17. University of Minnesota-Twin Cities
18. University of Southern California
19. Berklee College of Music
20. Georgia Institute of Technology-Main Campus
21. Cornell University
22. University of the Potomac-VA Campus
23. Babson College
24. School of Visual Arts
25. University of Wisconsin-Madison

# Model 2 - Excluding 
1. University of Phoenix-Arizona
2. Purdue University-Main Campus
3. University of Illinois at Urbana-Champaign
4. Michigan State University
5. Colorado Heights University
6. New York University
7. University of Washington-Seattle Campus
8. Divine Word College
9. Boston University
10. Pennsylvania State University-Main Campus
11. University at Buffalo
12. Lincoln University
13. The New School
14. University of the Potomac-VA Campus
15. Indiana University-Bloomington
16. University of Southern California
17. Southern California Institute of Architecture
18. Northeastern University
19. University of Minnesota-Twin Cities
20. Berklee College of Music
21. School of Visual Arts
22. University of California-Berkeley
23. Manhattan School of Music
24. Georgia Institute of Technology-Main Campus
25. Cornell University

# Model 3 - Excluding 
1. University of Phoenix-Arizona
2. Purdue University-Main Campus
3. University of Illinois at Urbana-Champaign
4. Michigan State University
5. New York University
6. Pennsylvania State University-Main Campus
7. Boston University
8. University of Washington-Seattle Campus
9. Indiana University-Bloomington
10. University at Buffalo
11. University of Minnesota-Twin Cities
12. Cornell University
13. Georgia Institute of Technology-Main Campus
14. University of Southern California
15. University of Wisconsin-Madison
16. Northeastern University
17. Ohio State University-Main Campus
18. University of Pennsylvania
19. University of California-Berkeley
20. University of Michigan-Ann Arbor
21. University of Iowa
22. Drexel University
23. University of Virginia-Main Campus
24. The New School
25. The University of Texas at Austin

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
