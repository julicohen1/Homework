# Complete all of the items below
# Use comments where you're having trouble or questions

# 1. Read your data set into R
?read.table

dataTable <- read.csv(file = 'dataTable.csv')
View(dataTable)

# library(readxl)
# dataTable <- read_excel("dataTable.xlsx")
# View(dataTable)

# 2. Peek at the top few rows

head(dataTable)

# 3. Peek at the top few rows for only a few columns

colnames(dataTable)
dataTable[1:5, c("subject", "cohort", "session")]

# 4. How many rows does your data have?

nrow(dataTable)

# 5. Get a summary for every column

summary(dataTable)

# 6. Get a summary for one column

summary(dataTable$age_yrs)

# 7. Are any of the columns giving you unexpected values?

    #No

# 8. Select a few key columns, make a vector of the column names

columns.select <- c("subject", "age_yrs", "fam_yrs", "lspan", "wordscore")

# 9. Create a new data.frame with just that subset of columns

df1 <- dataTable[, c(1,6:7,9,17)]
View(df1)

# 10. Create a new data.frame that is just the first 10 rows
#     and the last 10 rows of the data from the previous step

df2 <- dataTable[c(1:10,2018:2028), c(1,6:7,9,17)]
View(df2)

# 11. Create a new data.frame that is a random sample of half of the rows.
# HINT: ?sample

?sample

df3 <- dataTable[c(sample(1:2028, size = 1014)), ]
View(df3)

# 12. Find a comparison in your data that is interesting to make
#     (comparing two sets of numbers)
#     - run a t.test() (or cor.test()) for that comparison
#     - decide whether you need a non-default test
#       (e.g., Student's, paired)
#     - run the test with BOTH the formula and "vector"
#       formats, if possible
#     - if one is NOT possible, say why you can't do it

cor.test(dataTable$age_yrs, dataTable$lspan)
cor.test(dataTable[1:2028, 6], dataTable[1:2028, 9])


# 13. Repeat #12 for TWO more comparisons
#     - Tip: it's okay if the comparisons are kind of nonsensical, this is 
#       just a programming exercise

cor.test(dataTable$score, dataTable$age_yrs)
cor.test(dataTable$polledResponse, dataTable$age_yrs)

# 14. Save all results from #12 and #13 in an .RData file

c1 <- cor.test(dataTable$age_yrs, dataTable$lspan)
c2 <- cor.test(dataTable[1:2028, 6], dataTable[1:2028, 9])
c3 <- cor.test(dataTable$score, dataTable$age_yrs)
c4 <- cor.test(dataTable$polledResponse, dataTable$age_yrs)

save(list=c("c1", "c2", "c3", "c4"), file = "corFam.RData")

# 15. Email me your version of this script, PLUS the .RData
#     file from #14
#     - ALTERNATIVELY, push your version of this script and your .RData results
#       to a repo on GitHub, and send me the link


