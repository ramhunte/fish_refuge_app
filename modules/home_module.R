home_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h3("Home content"),

    dataTableOutput(ns("sites")),

    fluidRow(
      column(12, align = "right", next_btn("next_home"))
    )
  )
}


home_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output[[session$ns("sites")]] <- renderDataTable({
      data # Replace this with your actual data
    })
  })
}
