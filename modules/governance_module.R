governance_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h3("Governance - Data Management"),
    p("Rate the quality of data collection and storage."),
    sliderInput(ns("data_score"), "Data Management Score", 1, 5, 3),

    h3("Governance - Decision-Making Structures"),
    p("Evaluate clarity and transparency of governance."),
    sliderInput(ns("governance_score"), "Governance Effectiveness", 1, 5, 3),

    h3("Governance - Socioeconomic Inclusion"),
    p("How well does the governance process involve local communities?"),
    sliderInput(ns("socio_score"), "Socioeconomic Inclusion", 1, 5, 3)
  )
}

governance_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Example: observe or return values
    observe({
      # Print values or store in a reactiveValues list
      print(input$data_score)
      print(input$governance_score)
      print(input$socio_score)
    })
  })
}
