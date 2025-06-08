ui <-
  # scrollable next/back page under "Evaluate" tab
  tagList(
    tags$script(HTML(
      "
    $(document).on('shiny:inputchanged', function(event) {
      if (event.name === 'evaluate_tabs') {
        $('html, body').animate({ scrollTop: 0 }, 'fast');
      }
    });
  "
    )),

    # START page_navbar
    page_navbar(
      title = "Fish Refuge Evaluation App",
      theme = bs_theme(bootswatch = "flatly"),

      # START nav_panel Overview
      nav_panel(
        "Acerca de",

        fluidRow(
          column(1),
          column(
            10,

            br(),
            br(),

            div(
              style = "text-align: center;",
              h2("Bienvenidos")
            ),

            br(),
            br(),
            includeMarkdown("text/About.md")
          ),
          column(1)
        )
      ),

      # START nav_panel Evaluate
      nav_panel(
        "Evaluación",
        navset_pill(
          id = "evaluate_tabs", # Add this ID

          # nav_panel Home
          nav_panel(
            "Detalles de la reserva",
            fluidRow(
              column(2),
              column(8, home_ui("home")),
              column(2)
            ),

            fluidRow(
              column(12, align = "right", next_btn("next_home"))
            )
          ),

          # nav_panel Design
          nav_panel(
            "Gestión y diseño",
            fluidRow(
              column(1),
              column(10, design_ui("design")),
              column(1)
            ),

            fluidRow(
              column(6, align = "left", back_btn("prev_design")),
              column(6, align = "right", next_btn("next_design"))
            )
          ),

          # nav_panel Governance
          nav_panel(
            "Gobernanza",
            fluidRow(
              column(1),
              column(10, governance_ui("governance")),
              column(1)
            ),

            fluidRow(
              column(6, align = "left", back_btn("prev_governance")),
              column(6, align = "right", next_btn("next_governance"))
            )
          ),

          # nav_panel Biological
          nav_panel(
            "Biológica",
            fluidRow(
              column(1),
              column(10, biological_ui("biological")),
              column(1)
            ),
            fluidRow(
              column(6, align = "left", back_btn("prev_biological")),
              column(6, align = "right", next_btn("next_biological"))
            )
          ),

          # nav_panel Summary
          nav_panel(
            "Resumen",
            fluidRow(
              column(1),
              column(10, summary_ui("summary")),
              column(1)
            ),
            fluidRow(
              column(6, align = "left", back_btn("prev_biological"))
            )
          ),
        )
      ), # End nav_panel Evaluate

      # START nav_panel Summary
      nav_panel("Summary", h2("Summary content")) # START nav_panel Summary
    ) # END page_navbar
  ) # END tagList
