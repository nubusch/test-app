
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
  
  
  
  
}
















shinyApp(ui = ui, server = server)  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
