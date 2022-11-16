library(shiny)
library(tidyverse)
library(dplyr)
library(bslib)
library(sendmailR)
library(data.table)















ui <- navbarPage("Nubs advice for movies and serie", fluid = TRUE, theme = bs_theme(bootswatch =  "darkly"),
                 
                 tabPanel("My choice",
                          titlePanel("My choice for what to watch"),
                          fluidRow(column(3,
                                          
                                          checkboxGroupInput( inputId = "Filmsorseries",
                                                              label = "Films or Series",
                                                              choices = c("Films" = "F", "Series" = "S"))),
                                   
                                   
                                   checkboxGroupInput(inputId = "genre",
                                                      label = "Select Genres",
                                                      choices = sort(c("Animation", "Action", "Adventure", "Comedy", "Crime", "Drama", "Family", "Fantasy", "Romance", "Mystery", "Scifi",  "Music", "Thriller", "Musical", "Horror", "History", "War", "Biography", "Sport", "Short", "Documentary", "Western"  ))),
                                   
                                   
                                   column(6,
                                          
                                          
                                          
                                          
                                          mainPanel(dataTableOutput("choice"))
                                          
                                          
                                          
                                   ))
                          
                          
                          
                          
                          
                 ),
                 
                 
                 
                 
                 
                 
                 tabPanel("About",
                          titlePanel("About me and the project"),
                          fluidRow(column(6,
                                          h4(p("About the Project")),
                                          h5(p("This project is intended to facilitate useful comparisons between colleges in the NCAA, based on swimming performance, location, and academic information.  Here a prospective student-athlete, or anyone else with an interest can find schools fitting a particular set of criterion relevant to them, for example, schools close to home, with times in a particular range, and of a specified academic profile.")),
                                          br(),
                                          h5(p("The project began as an attempt to combine my interest in swimming with a need to practice R, a programming language used primarily for analyzing and reporting data.  It has two components.  The first is this app, which queries a dataset to return information in the form of plots, data tables etc.  The second is the dataset itself, which I assembled by tying together information from the sources below.")),
                                          br(),
                                          h5(p("I hope you find it interesting and/or useful.  Any comments or questions are welcome at gpilgrim2607@gmail.com"),
                                             p("The source code for this Shiny app is available ", a("on github", href = "https://github.com/gpilgrim2670/SwimMap"), "."))
                                          
                                          
                                          
                                          
                          )
                          
                          
                          
                          )
                          
                          
                          
                 ),
                 
                 
                 tabPanel("Feedback",
                          titlePanel("In case of feedback"),
                          fluidRow(column(6,
                                          h4(p("About the Project")),
                                          h5(p("This project is intended to facilitate useful comparisons between colleges in the NCAA, based on swimming performance, location, and academic information.  Here a prospective student-athlete, or anyone else with an interest can find schools fitting a particular set of criterion relevant to them, for example, schools close to home, with times in a particular range, and of a specified academic profile.")),
                                          br(),
                                          h5(p("The project began as an attempt to combine my interest in swimming with a need to practice R, a programming language used primarily for analyzing and reporting data.  It has two components.  The first is this app, which queries a dataset to return information in the form of plots, data tables etc.  The second is the dataset itself, which I assembled by tying together information from the sources below.")),
                                          br(),
                                          h5(p("I hope you find it interesting and/or useful.  Any comments or questions are welcome at gpilgrim2607@gmail.com"),
                                             p("The source code for this Shiny app is available ", a("on github", href = "https://github.com/gpilgrim2670/SwimMap"), "."))
                                          
                          ),
                          
                          column(6,
                                 textInput("text", label = h5("Please leave your feedback here - nub"), value = "Enter text..."),
                                 actionButton("fbButton", "Submit")
                                 
                          )
                          
                          
                          
                          
                          
                          
                          )
                          
                          
                          
                          
                          
                          
                 )
                 
                 
                 
                 
)







server <- function(input, output) {
  
  id <- "15mfq838c4f9X-WC8n8mwXBtugOlzeVpf" 
  films <- read.csv(paste0("https://docs.google.com/uc?id=",id,"&export=download"))
  
  films <- films[-c(1,26)]
  films <- films[-c(1:3),]
  
  
  names(films) <- c( "name", "FilmorSerie", "Comedy", "Drama", "Family", "Fantasy", "Action", "Crime","Western","Romance","Adventure","Mystery",
                     "Scifi","Animation","Music","Thriller","Musical","Horror","History","War","Biography","Sport","Short","Documentary")
  
  
  
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
  
  
  
  #create outputs
  
  output$choice <- renderDataTable({
    data.table(films[, input$genre,drop = FALSE])
    
  })
  
  
  
  
  
  
  
  
  
  choice_finder <- reactive({
    req(input$Filmsorseries)
    req(input$genre)
    
  })
  
  
  
  
  
  
  
  #sending feedback
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
















shinyApp(ui = ui, server = server)