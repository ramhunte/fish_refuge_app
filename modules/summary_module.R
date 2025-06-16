####################################################################
############################## UI ##############################
####################################################################
summary_ui <- function(id) {
  ns <- NS(id)
  tagList(
    br(),
    br(),

    bslib::layout_columns(
      col_widths = c(4, 4, 4), # 3 equal-width columns

      ############################# Design #################################
      # Card 1
      div(
        div(
          style = "text-align: center;",
          h1("Gestión y diseño")
        ),

        bslib::value_box(
          title = "Puntuación total de gestión y diseño",
          value = uiOutput(ns("d_tot_vb")),
          showcase = bs_icon("check-lg"),
          theme_color = "secondary"
        ),

        bslib::card(
          class = "bg-success text-white",
          # bslib::card_header(
          #   "Design",
          #   style = "text-align: center; font-size: 1.5rem; font-weight: bold;"
          # ),
          bslib::value_box(
            title = "Fase #1: Factibilidad",
            value = uiOutput(ns("d1_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #2: Socialización",
            value = uiOutput(ns("d2_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #3: Diseño",
            value = uiOutput(ns("d3_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #4: Gestión",
            value = uiOutput(ns("d4_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #5: Permanencia",
            value = uiOutput(ns("d5_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          )
        )
      ),

      ############################# Governance #################################
      div(
        div(
          style = "text-align: center;",
          h1("Gobernanza")
        ),
        bslib::value_box(
          title = "Puntuación total de gobernanza",
          value = uiOutput(ns("g_tot_vb")),
          showcase = bs_icon("check-lg"),
          theme_color = "secondary"
        ),

        bslib::card(
          class = "bg-success text-white",
          # bslib::card_header(
          #   "Design",
          #   style = "text-align: center; font-size: 1.5rem; font-weight: bold;"
          # ),
          bslib::value_box(
            title = "Fase #1: Gestión de datos",
            value = uiOutput(ns("g1_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #2: Toma de decisiones",
            value = uiOutput(ns("g2_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #3: Socioeconómicos",
            value = uiOutput(ns("g3_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          )
        )
      ),

      ############################# Biological #################################
      div(
        div(
          style = "text-align: center;",
          h1("Biológica")
        ),

        bslib::value_box(
          title = "Puntuación biológica total",
          value = uiOutput(ns("b_tot_vb")),
          showcase = bs_icon("check-lg"),
          theme_color = "secondary"
        ),

        bslib::card(
          class = "bg-success text-white",
          # bslib::card_header(
          #   "Design",
          #   style = "text-align: center; font-size: 1.5rem; font-weight: bold;"
          # ),
          bslib::value_box(
            title = "Fase #1: Biológica",
            value = uiOutput(ns("b1_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          )
        )
      ),
    ),

    br(),
    br(),

    # fluidRow(
    #   column(
    #     width = 4,
    #     offset = 4, # 12-column grid: 4 left, 4 middle, 4 right
    #     value_box(
    #       title = "puntuación total",
    #       value = uiOutput(ns("tot_vb")),
    #       showcase = bs_icon("check-circle-fill"),
    #       theme_color = "success"
    #     )
    #   )
    # ),

    div(style = "font-size: 24px;", textOutput(ns("promoventeOutput"))),

    br(),

    div(style = "font-size: 24px;", textOutput(ns("comunidadOutput"))),

    br(),

    div(style = "font-size: 24px;", textOutput(ns("estadoOutput"))),

    br(),

    div(style = "font-size: 24px;", textOutput(ns("rmOutput"))),

    br(),

    div(style = "font-size: 24px;", textOutput(ns("catOutput"))),

    br(),
  )
}


####################################################################
############################## server ##############################
####################################################################
summary_server <- function(id, h_vals, d_vals, g_vals, b_vals) {
  moduleServer(id, function(input, output, session) {
    # reserve information
    output$promoventeOutput <- renderText({
      paste0("Promovente: ", req(h_vals$promovente()))
    })

    output$comunidadOutput <- renderText({
      paste0("Comunidad: ", req(h_vals$comunidad()))
    })

    output$estadoOutput <- renderText({
      paste0("Estado: ", req(h_vals$estado()))
    })

    output$rmOutput <- renderText({
      paste0("Reserva Marina: ", req(h_vals$rm()))
    })

    output$catOutput <- renderText({
      paste0("Categoría de reserva: ", req(h_vals$cat()))
    })

    # design
    output$d1_vb <- val_ui(d_vals$d1)
    output$d2_vb <- val_ui(d_vals$d2)
    output$d3_vb <- val_ui(d_vals$d3)
    output$d4_vb <- val_ui(d_vals$d4)
    output$d5_vb <- val_ui(d_vals$d5)
    output$d_tot_vb <- val_ui(d_vals$d_tot)
    # governance
    output$g1_vb <- val_ui(g_vals$g1)
    output$g2_vb <- val_ui(g_vals$g2)
    output$g3_vb <- val_ui(g_vals$g3)
    output$g_tot_vb <- val_ui(g_vals$g_tot)
    # biological
    output$b1_vb <- val_ui(b_vals$b1)
    output$b_tot_vb <- val_ui(b_vals$b_tot)
    # total
    tot_avg <- reactive({
      mean(
        c(d_vals$d_tot(), g_vals$g_tot(), b_vals$b_tot()),
        na.rm = TRUE
      )
    })

    output$tot_vb <- val_ui(function() tot_avg())
  })
}
