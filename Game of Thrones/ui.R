navbarPage("The most similar episodes of Game of Thrones",
           tabPanel("Find similar episodes",fluidPage(theme = shinytheme("flatly")),
                    tags$head(
                      tags$style(HTML(".shiny-output-error-validation{color: red;}"))),
                    pageWithSidebar(
                      headerPanel("Let's Start"),
                      sidebarPanel(width = 4,
                                   selectInput('episodeId1', 'Choose your favorite episode:',paste(data$episodeId1)),
                                   
                                   submitButton("Discover")
                      ),
                      mainPanel(
                        column(8, plotlyOutput("plot1", width = 800, height=500),
                               
                               
                        )
                      )
                    )),
          
           tabPanel("Profils",p("Game of Throne is an American series containing 73 episodes in 8 seasons. We used a database containing the episode index (season number-episode number), its title, a popularity index, a nobility index and the total number of deaths in each episode","."),p("Our interactive application allows you to find the 3 episodes closest to the one chosen by the user, based on the 3 clues seen in the radar chart."),p(
"Indeed, the popularity index is calculated thanks to the number of popular actors who appear in an episode X.As for the nobility index, the latter allows the distinction between the location of each episode, the greater it is the episode is filmed in castles."),p("And finally, since Game of Thrones is a War series, the number of deaths in each episode means a lot to the viewer.
The similarity between the episodes is found by a Clustering which allowed profiling 73 existing episodes.",style = "font-size:15px"),
                    
                    hr(), 
                    p("The available Episode profils:",style = "font-size:30px"),
                    box("Profil 1: Les nobles populaires",style = "font-size:15px;color: red"),
                    box(p("Profil 2: Les celebrites de GOT",style = "font-size:15px;color: blue")),
                    box(p("Profil 3: On peut tous mourir",style = "font-size:15px;color: orange")),
                    box(p("Profil 4: Let's survive",style = "font-size:15px;color: pink")),
                    box(p("Profil 5: Les vedettes des chateaux",style = "font-size:15px;color: purple")),
                    box(p("Profil 6: Richesse,Popularite Vs LA MORT",style = "font-size:15px;color: green")),
                    box(p("Profil 7: Le deuil",style = "font-size:15px;color: black")),
                    ),
           
           tabPanel("Developers",
                    p(a("Hicham Tazi", href="http://buscatextual.cnpq.br/buscatextual/visualizacv.do?id=K4417495Y5", target="_blank"),style = "font-size:25px"),
                    p("Junior Data Scientist, Ecole Centrale Marseille/Casablanca",style = "font-size:20px"),
                    p("email: hicham.tazi@centrale-casablanca.ma",style = "font-size:15px")
                    
                    
           )            
)




