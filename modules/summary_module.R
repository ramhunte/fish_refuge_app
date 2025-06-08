####################################################################
############################## UI ##############################
####################################################################
summary_ui <- function(id) {
  ns <- NS(id)
  tagList(
    br(),
    br(),

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

    bslib::layout_columns(
      col_widths = c(4, 4, 4), # 3 equal-width columns

      ############################# Design #################################
      # Card 1
      div(
        div(
          style = "text-align: center;",
          h1("Design")
        ),
        bslib::card(
          class = "bg-primary text-white",
          # bslib::card_header(
          #   "Design",
          #   style = "text-align: center; font-size: 1.5rem; font-weight: bold;"
          # ),
          bslib::value_box(
            title = "Fase #1: Feasibility",
            value = uiOutput(ns("d1_vb")),
            showcase = icon("check-circle"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #2: Socialization",
            value = uiOutput(ns("d2_vb")),
            showcase = icon("check-circle"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #3: Design",
            value = uiOutput(ns("d3_vb")),
            showcase = icon("check-circle"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #4: Management",
            value = uiOutput(ns("d4_vb")),
            showcase = icon("check-circle"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #5: Permanence",
            value = uiOutput(ns("d5_vb")),
            showcase = icon("check-circle"),
            theme_color = "secondary"
          )
        ),

        bslib::value_box(
          title = "Total Design Score",
          value = uiOutput(ns("d_tot_vb")),
          showcase = icon("check-circle"),
          theme_color = "success"
        )
      ),

      ############################# Governance #################################
      div(
        div(
          style = "text-align: center;",
          h1("Governance")
        ),
        bslib::card(
          class = "bg-primary text-white",
          # bslib::card_header(
          #   "Design",
          #   style = "text-align: center; font-size: 1.5rem; font-weight: bold;"
          # ),
          bslib::value_box(
            title = "Fase #1: Data Management",
            value = uiOutput(ns("g1_vb")),
            showcase = icon("check-circle"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #2: Decision Making",
            value = uiOutput(ns("g2_vb")),
            showcase = icon("check-circle"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #3: Socioeconomic",
            value = uiOutput(ns("g3_vb")),
            showcase = icon("check-circle"),
            theme_color = "secondary"
          )
        ),

        bslib::value_box(
          title = "Total Design Score",
          value = uiOutput(ns("g_tot_vb")),
          showcase = icon("check-circle"),
          theme_color = "success"
        )
      ),

      ############################# Biological #################################
      div(
        div(
          style = "text-align: center;",
          h1("Biological")
        ),
        bslib::card(
          class = "bg-primary text-white",
          # bslib::card_header(
          #   "Design",
          #   style = "text-align: center; font-size: 1.5rem; font-weight: bold;"
          # ),
          bslib::value_box(
            title = "Fase #1: Biological",
            value = uiOutput(ns("b1_vb")),
            showcase = icon("check-circle"),
            theme_color = "secondary"
          )
        ),

        bslib::value_box(
          title = "Total Biological  Score",
          value = uiOutput(ns("b_tot_vb")),
          showcase = icon("check-circle"),
          theme_color = "success"
        )
      ),
    )
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
  })
}
