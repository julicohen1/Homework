# 1. Run t-tests with the "iris" data set
#    - compare sepal width


iris
my.iris <- iris
View(my.iris)
setosa.sepalwidth <- my.iris$Sepal.Width[1:50]
versi.sepalwidth <- my.iris$Sepal.Width[51:100]
virgin.sepalwidth <- my.iris$Sepal.Width[101:150]

t.test(setosa.sepalwidth,versi.sepalwidth)
t.test(setosa.sepalwidth,virgin.sepalwidth)
t.test(versi.sepalwidth,virgin.sepalwidth)

#    - two different pairwise comparisons (i.e., between the three species)
colnames(my.iris)
setosa.petalwidth <- my.iris$Petal.Width[1:50]
versi.petalwidth <- my.iris$Petal.Width[51:100]

t.test(setosa.petalwidth,setosa.sepalwidth, paired = TRUE)
t.test(versi.petalwidth,versi.sepalwidth, paired = TRUE)

#    HINT: use the t.test() function


# 2. Find the overall correlation between Sepal.Length and Petal.Length
#    HINT: use the cor() function

cor(my.iris$Sepal.Length, my.iris$Petal.Length)
# 3. Get the correlation between Sepal.Length and Petal.Length for each Species separately

cor(my.iris$Sepal.Length[1:50], my.iris$Petal.Length[1:50])
cor(my.iris$Sepal.Length[51:100], my.iris$Petal.Length[51:100])
cor(my.iris$Sepal.Length[101:150], my.iris$Petal.Length[101:150])

# 4. Look at the built-in data set ToothGrowth. Use a t-test to compare tooth
#    lengths in the different supplement types.
#    HINT: first use head() and summary() to "peek" at the data

?ToothGrowth
ToothGrowth
View(ToothGrowth)

my.ToothGrowth <- ToothGrowth
View(my.ToothGrowth)
head(my.ToothGrowth)
summary(my.ToothGrowth)

vc.len <- my.ToothGrowth$len[1:30]
oj.len <- my.ToothGrowth$len[31:60]

t.test(vc.len,oj.len)



# 5. Re-run #4 t-test as a true "Student's" t-test, not a Welch's. 
#    Re-run it an additional time as a paired t-test.
#    HINT: read the help file carefully!

t.test(vc.len,oj.len, var.equal = TRUE) #Student's t-test
t.test(vc.len,oj.len, paired = TRUE) #paired t-test

# 6. Run a Wilcoxon Signed Rank test for the same comparisons in #1
#    HINT: use help.search() or ?? to find a function to do this

??wilcox.test

wilcox.test(setosa.petalwidth,setosa.sepalwidth, paired = TRUE)
wilcox.test(versi.petalwidth,versi.sepalwidth, paired = TRUE)

# 7. Save all results (and only those results!) in an .RData object
#    - try to think of (at least) two ways to do this


# 8. Look at the format of your Homework data set
#     - find a function to read in your data
#     - needed for tonight's Homework
#    HINT: start with the help for read.table()

