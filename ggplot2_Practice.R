# Load ggplot2
library(ggplot2)

# Function 'ggplot'  
# geom_bar, geom_point, geom_line, geom_smooth, 
# geom_histogram, geom_boxplot, geom_text, geom_density, geom_errorbar, 
# geom_hline, geom_vline
myGraph <- ggplot(myData, aes())
  + theme(title = )
  + geom_bar() 
  + geom_point()
  + label()


# Statistics in ggplot2 
# bin, boxplot, density, qq, smooth, summary
bin()
boxplot()
density()
qq()
smooth()
summary()

# Facet_grid, Facet_wrap  
  + facet_grid( ~ y, nrow = , ncol = )
  + facet_wrap(x ~ y)

# ggsave
ggsave(".tiff", width = , height = )

imageDirectory <- file.path(Sys.getenv("Home"), "Documents", "R projects", "rstat2022", "Image")
imageFile <- file.path(imageDirectory, "Graph.png")
ggsave(imageFile)

## Jun 23, 2022 

