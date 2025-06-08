home_ui <- function(id) {
  ns <- NS(id)
  tagList(
    br(),
    br(),
    br(),

    div(
      style = "text-align: center;",
      h2("Ingrese los detalles de la reserva"),
    ),
    br(),

    card(
      # title = "Data",
      class = "bg-primary text-white",

      div(
        style = "text-align: center;",

        textInput(
          ns("promoventeInput"),
          label = h4("1. Promovente"),
          value = ""
        ),
        br(),
        textInput(
          ns("comunidadInput"),
          label = h4("2. Comunidad"),
          value = ""
        ),
        br(),
        textInput(ns("estadoInput"), label = h4("3. Estado"), value = ""),
        br(),
        textInput(ns("rmInput"), label = h4("4. Reserva Marina"), value = ""),
        br(),
        textInput(
          ns("catInput"),
          label = h4("5. Categoría de reserva"),
          value = ""
        )
      )
    )
  )
}


home_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # promovente text
    promovente <- reactive({
      input$promoventeInput
    })

    # comunidad text
    comunidad <- reactive({
      input$comunidadInput
    })

    # estado text
    estado <- reactive({
      input$estadoInput
    })

    # rm text
    rm <- reactive({
      input$rmInput
    })

    # cat text
    cat <- reactive({
      input$catInput
    })

    return(list(
      promovente = promovente,
      comunidad = comunidad,
      estado = estado,
      rm = rm,
      cat = cat
    ))
  })
}
