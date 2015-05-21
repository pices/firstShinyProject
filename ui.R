
shinyUI(fluidPage(
  titlePanel("My First Shiny App"),
  fluidRow(
    column(3, wellPanel(
      sliderInput("n", "N:", min = 10, max = 100, value = 10,
                  step = 10),
      textInput("text", "Text:", "input text here"),
      submitButton("OK")
    )),
    column(6,
           plotOutput("plot1", width = 400, height = 300),
           verbatimTextOutput("text")
    )
  )
))