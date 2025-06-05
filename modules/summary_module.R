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
          value = "80",
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
            value = "80",
            showcase = icon("check-circle"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #2: Decision Making",
            value = "80",
            showcase = icon("check-circle"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #3: Socioeconomic",
            value = "80",
            showcase = icon("check-circle"),
            theme_color = "secondary"
          )
        ),

        bslib::value_box(
          title = "Total Design Score",
          value = "80",
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
            value = "80",
            showcase = icon("check-circle"),
            theme_color = "secondary"
          )
        ),

        bslib::value_box(
          title = "Total Biological  Score",
          value = "80",
          showcase = icon("check-circle"),
          theme_color = "success"
        )
      ),
    )

    # h1("Design"),
    # h2("Fase #1: Feasibility"),
    # h2("Fase #2: Socialization"),
    # h2("Fase #3: Design"),
    # h2("Fase #4: Management"),
    # h2("Fase #5: Permanence")
  )
}


####################################################################
############################## server ##############################
####################################################################
summary_server <- function(id, d_vals) {
  moduleServer(id, function(input, output, session) {
    # design
    output$d1_vb <- val_ui(d_vals$d1())
    output$d2_vb <- val_ui(d_vals$d2())
    output$d3_vb <- val_ui(d_vals$d3())
    output$d4_vb <- val_ui(d_vals$d4())
    output$d5_vb <- val_ui(d_vals$d5())
  })
}
