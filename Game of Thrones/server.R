
function(input, output, session) {
  
  selectedData1 <- reactive({
    data %>% filter(data$Profil==data[match(input$episodeId1,data$episodeId1),5])
  })
  
  
  

  output$plot1 <- renderPlotly({
    
    
    
    if (data[match(input$episodeId1,data$episodeId1),5]==1) {
      
      plot_ly(
        type = 'scatterpolar',
        mode = "closest",
        fill = 'toself'
      ) %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[1,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[1,6]
        )  %>%
        
        
        add_trace(
          
          r = as.numeric(selectedData1()[2,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[2,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[3,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[3,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[4,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[4,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[5,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[5,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[6,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[6,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[7,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[7,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[8,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[8,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[9,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[9,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[10,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[10,6]
        )  %>%
        
        
        layout(
          polar = list(
            radialaxis = list(
              visible = T,
              range = c(0,100)
            )
          ),
          showlegend=TRUE
          
          
          
        )
      
      
    }
    
    
    else if (data[match(input$episodeId1,data$episodeId1),5]==2) {
      
      plot_ly(
        type = 'scatterpolar',
        mode = "closest",
        fill = 'toself'
      ) %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[1,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[1,6]
        )  %>%
        
        
        add_trace(
          
          r = as.numeric(selectedData1()[2,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[2,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[3,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[3,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[4,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[4,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[5,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[5,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[6,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[6,6]
        )  %>%
        
        
        layout(
          polar = list(
            radialaxis = list(
              visible = T,
              range = c(0,100)
            )
          ),
          showlegend=TRUE
          
          
          
        )
      
      
    }
    
    else if (data[match(input$episodeId1,data$episodeId1),5]==3) {
      
      plot_ly(
        type = 'scatterpolar',
        mode = "closest",
        fill = 'toself'
      ) %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[1,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[1,6]
        )  %>%
        
        
        add_trace(
          
          r = as.numeric(selectedData1()[2,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[2,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[3,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[3,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[4,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[4,6]
        )  %>%
        
        
        layout(
          polar = list(
            radialaxis = list(
              visible = T,
              range = c(0,100)
            )
          ),
          showlegend=TRUE
          
          
          
        )
      
      
    }
    
    else if (data[match(input$episodeId1,data$episodeId1),5]==4) {
      
      plot_ly(
        type = 'scatterpolar',
        mode = "closest",
        fill = 'toself'
      ) %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[1,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[1,6]
        )  %>%
        
        
        add_trace(
          
          r = as.numeric(selectedData1()[2,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[2,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[3,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[3,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[4,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[4,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[5,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[5,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[6,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[6,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[7,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[7,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[8,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[8,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[9,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[9,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[10,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[10,6]
        )  %>%
        
        
        layout(
          polar = list(
            radialaxis = list(
              visible = T,
              range = c(0,100)
            )
          ),
          showlegend=TRUE
          
          
          
        )
      
      
    }
    
    
    else if (data[match(input$episodeId1,data$episodeId1),5]==5) {
      
      plot_ly(
        type = 'scatterpolar',
        mode = "closest",
        fill = 'toself'
      ) %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[1,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[1,6]
        )  %>%
        
        
        add_trace(
          
          r = as.numeric(selectedData1()[2,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[2,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[3,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[3,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[4,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[4,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[5,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[5,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[6,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[6,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[7,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[7,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[8,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[8,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[9,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[9,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[10,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[10,6]
        )  %>%
        
        
        layout(
          polar = list(
            radialaxis = list(
              visible = T,
              range = c(0,100)
            )
          ),
          showlegend=TRUE
          
          
          
        )
      
      
    }
    
    else if (data[match(input$episodeId1,data$episodeId1),5]==6) {
      
      plot_ly(
        type = 'scatterpolar',
        mode = "closest",
        fill = 'toself'
      ) %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[1,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[1,6]
        )  %>%
        
        
        add_trace(
          
          r = as.numeric(selectedData1()[2,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[2,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[3,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[3,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[4,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[4,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[5,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[5,6]
        )  %>%
        
        
        layout(
          polar = list(
            radialaxis = list(
              visible = T,
              range = c(0,100)
            )
          ),
          showlegend=TRUE
          
          
          
        )
      
      
    }
    
    
    else {
      
      plot_ly(
        type = 'scatterpolar',
        mode = "closest",
        fill = 'toself'
      ) %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[1,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[1,6]
        )  %>%
        
        
        add_trace(
          
          r = as.numeric(selectedData1()[2,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[2,6]
        )  %>%
        
        add_trace(
          
          r = as.numeric(selectedData1()[3,2:4]),
          theta = c("Totale_death","Sum_Noble","Popularity_Index"),
          showlegend=TRUE,
          mode = "markers",
          name = selectedData1()[3,6]
        )  %>%
        
        
        layout(
          polar = list(
            radialaxis = list(
              visible = T,
              range = c(0,100)
            )
          ),
          showlegend=TRUE
          
          
          
        )
      
      
    }
    
    
    
    
  })
  
  
}



