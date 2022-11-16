library(shiny)
library(tidyverse)
library(dplyr)
library(bslib)
library(sendmailR)
library(data.table)


id <- "15mfq838c4f9X-WC8n8mwXBtugOlzeVpf" 
films <- read.csv(paste0("https://docs.google.com/uc?id=",id,"&export=download"))

films <- films[-c(1,26)]
films <- films[-c(1:3),]


names(films) <- c( "name", "FilmorSerie", "Comedy", "Drama", "Family", "Fantasy", "Action", "Crime","Western","Romance","Adventure","Mystery",
                   "Scifi","Animation","Music","Thriller","Musical","Horror","History","War","Biography","Sport","Short","Documentary")








ui <- fluidPage(
  theme = bs_theme(bootswatch=  "darkly"    ), 
  
  
  
  
  
  
  titlePanel("nub's advice for movies and series"),
  sidebarLayout(
    sidebarPanel("Still in progress..."),
    fluidRow(column(3,
                    
                    checkboxGroupInput( inputId = "Filmsorseries",
                                        label = "Films or Series",
                                        choices = c("Films" = "F", "Series" = "S"))),
             
             
             column(3, offset = 2,
                    
                    checkboxGroupInput(inputId = "genre",
                                       label = "Select Genres",
                                       choices = sort(c("Animation", "Action", "Adventure", "Comedy", "Crime", "Drama", "Family", "Fantasy", "Romance", "Mystery", "Scifi",  "Music", "Thriller", "Musical", "Horror", "History", "War", "Biography", "Sport", "Short", "Documentary", "Western"  )))),
             
             
             column(6,
                    
                    textInput("text", label = h5("Please leave your feedback here - nub"), value = "Enter text..."),
                    actionButton("fbButton", "Submit"),
                    
                    
             ),
             
             
             
             
             
             mainPanel(verbatimTextOutput("value")),
             
    )))







server <- function(input, output) {
  
  
  fbtext <- eventReactive(input$fbButton, {
    input$text
  })
  
  output$nText <- renderText({
    fbtext()
  })
  
  output$value <- renderText({ input$genre })
  
  #define variables
  
  
  
  Animation <- filter(films, Animation == "x")
  Action <- filter(films, Action == "x")
  Adventure <- filter(films, Adventure == "x")
  Comedy <- filter(films, Comedy == "x")
  Crime <- filter(films, Crime == "x")
  Drama <- filter(films, Drama == "x")
  Family <- filter(films, Family == "x")
  Fantasy <- filter(films, Fantasy == "x")
  Romance <- filter(films, Romance == "x")
  Mystery <- filter(films, Mystery == "x")
  Scifi <- filter(films, Scifi == "x")
  Music <- filter(films,  Music == "x")
  Thriller <- filter(films, Thriller == "x")
  Musical <- filter(films, Musical == "x")
  Horror <- filter(films, Horror == "x")
  History <- filter(films, History == "x")
  War <- filter(films,  War == "x")
  Biography <- filter(films, Biography == "x")
  Sport <- filter(films, Sport == "x")
  Short <- filter(films, Short == "x")
  Documentary <- filter(films, Documentary == "x")
  Western <- filter(films, Western == "x")
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  choice_finder <- reactive({
    req(input$Filmsorseries)
    req(input$genre)
    
  })
  
  
  
  
  
  
  
  #sending feedback
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
















shinyApp(ui = ui, server = server)