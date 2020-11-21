# Used packages
pacotes = c("shiny", "shinydashboard", "shinythemes", "plotly", "shinycssloaders","tidyverse",
            "scales", "knitr", "kableExtra", "ggfortify","dplyr","plotly","FNN")

# Run the following command to verify that the required packages are installed. If some package
# is missing, it will be installed automatically
package.check <- lapply(pacotes, FUN = function(x) {
  if (!require(x, character.only = TRUE)) {
    install.packages(x, dependencies = TRUE)
  }
})

# Define working directory
episode=read.table("data/episodes.csv",header=TRUE,sep=",", row.names = 1)
data <- read.table("data/Data.csv",header=TRUE,sep=",", row.names = 1)
data=data %>% left_join(episode%>%select(1,2,3),by='episodeId')
data$episodeId1=paste("E",data$episodeNum,"_S",data$seasonNum)


