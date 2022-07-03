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


# Save Jul 2, 2022