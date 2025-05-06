biological_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h3("Biological - Ecological Management"),
    p("How effective is biological monitoring?"),
    sliderInput(ns("monitoring_score"), "Monitoring Score", 1, 5, 3),

    p("How well are habitat needs considered?"),
    sliderInput(ns("habitat_score"), "Habitat Score", 1, 5, 3)
  )
}

biological_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    observe({
      print(input$monitoring_score)
      print(input$habitat_score)
    })
  })
}
