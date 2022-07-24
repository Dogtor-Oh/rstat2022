library(ggplot2)

#Data from 'Discovering Statistics Using R (Andy Field)'
facebookData <- read.csv("FacebookNarcissism.csv", header = TRUE)

head(facebookData)
summary(facebookData)


#Producing graphs!
graph <- ggplot(facebookData, aes(NPQC_R_Total, Rating))

graph + geom_point()
graph + geom_point(shape = 17)
graph + geom_point(size = 6)

graph + geom_point(aes(colour = Rating_Type))

graph + geom_point(aes(colour = Rating_Type), position = "jitter")

graph + geom_point(aes(shape = Rating_Type), position = "jitter")


#Data from 'Discovering Statistics Using R (Andy Field)'
examData <- read.csv("Exam Anxiety.csv", header = TRUE)

head(examData)
summary(examData)

#Producing scatter plots! \o/
scatter <- ggplot(examData, aes(Anxiety, Exam))

scatter + geom_point()

scatter + geom_point() + labs(x = "Exam Anxiety", y = "Exam Performance %")

scatter + geom_point() + geom_smooth() + labs(x = "Exam Anxiety", y = "Exam Performance %") #Local regression! (lm? glm? gam? loess?)

scatter + geom_point() + geom_smooth(method = "lm") + labs(x = "Exam Anxiety", y = "Exam Performance %") #Linear regression

scatter + geom_point() + geom_smooth(method = "lm", color = "Red") + labs(x = "Exam Anxiety", y = "Exam Performance %") 
scatter + geom_point() + geom_smooth(method = "lm", color = "Red", se = FALSE) + labs(x = "Exam Anxiety", y = "Exam Performance %") 
scatter + geom_point() + geom_smooth(method = "lm", fill = "Blue", alpha = 0.1) + labs(x = "Exam Anxiety", y = "Exam Performance %") 

scatter + geom_point(aes(color = Gender)) + geom_smooth(method = "lm", aes(fill = Gender), alpha = 0.1) + labs(x = "Exam Anxiety", y = "Exam Performance %", color = "Gender")


#Data from 'Discovering Statistics Using R (Andy Field)'
festivalData <- read.csv("DownloadFestival.csv", header = TRUE)

head(festivalData)
summary(festivalData)

festivalHistogram <- ggplot(festivalData, aes(day1)) + theme(legend.position = "none") # without legends in the graphs


# Histogram
festivalhistogram + geom_histogram()  
festivalhistogram + geom_histogram(binwidth = 0.4) # adjust the width of the bins

festivalhistogram + geom_histogram(binwidth = 0.4) + labs(x = "hygiene (Day 1 of Festival)", y = "Frequency")


#Boxplot
festivalBoxplot <- ggplot(festivalData, aes(gender, day1))

festivalBoxplot + geom_boxplot() + labs(x = "Gender", y = "Hygiene (Day 1 of Festival)") # There's an outlier!

festivalData_2 <- festivalData[order(festivalData$day1),]
library("Rcmdr") # To edit outlier

festivalBoxplot <- ggplot(festivalData_2, aes(gender, day1))
festivalBoxplot + geom_boxplot() + labs(x = "Gender", y = "Hygiene (Day 1 of Festival)")


#Density plot
density <- ggplot(festivalData_2, aes(day1))
density + geom_density()
density + geom_density() + labs(x = "Hygiene (Day 1 of Festival", y = "Density Estimate")


#Data from 'Discovering Statistics Using R (Andy Field)'
chickFlick <- read.csv("ChickFlick.csv", header = TRUE)

head(chickFlick)
summary(chickFlick)


#Bar chart
bar <- ggplot(chickFlick, aes(film, arousal))

bar_mean <- bar + stat_summary(fun.y = mean, geom = "bar", fill = "White", color = "Black") # mean, median?
bar_stat <- bar_mean + stat_summary(fun.data = mean_cl_normal, geom = "pointrange") # mean_cl_normal, mean_cl_boot?

bar_stat + labs(x = "Film", y = "Mean Arousal")


#Bar chart (depending on gender)
bar2 <- ggplot(chickFlick, aes(film, arousal, fill = gender))

bar2_mean <- bar2 + stat_summary(fun = mean, geom = "bar", position = "dodge") # fun.y -> fun ? 
bar2_stat <- bar2_mean + stat_summary(fun.data = mean_cl_normal, geom = "errorbar", position = position_dodge(width = 0.90), width = 0.2) 

bar2_stat + labs(x = "Film", y = "Mean Arousal")


#Bar chart (depending on gender w/ faceting)
bar3 <- ggplot(chickFlick, aes(film, arousal, fill = film)) # fill = 'film'

bar3_mean <- bar3 + stat_summary(fun = mean, geom = "bar") # dodge X 
bar3_stat <- bar3_mean + stat_summary(fun.data = mean_cl_normal, geom = "errorbar", width = 0.2)

bar3_stat + facet_wrap(~ gender) #faceting
bar3_stat + facet_wrap(~ gender) + labs(x = "Film", y = "Mean Arousal") # labs

bar3_fin <- bar3_stat + facet_wrap(~ gender) + labs(x = "Film", y = "Mean Arousal")
bar3_fin + theme(legend.position = "none") # removing the legend

bar3_fin + scale_fill_manual("Gender", values = c("Female" = "Blue", "Male" = "Green"))
bar3_fin + scale_fill_manual("Gender", values = c("Female" = "#3366FF", "Male" = "#336633"))


# Saved on Jul 24, 2022