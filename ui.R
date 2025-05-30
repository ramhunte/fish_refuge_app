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
      nav_panel("Overview", h2("Welcome!")), # END nav_panel Overview

      # START nav_panel Evaluate
      nav_panel(
        "Evaluate",
        navset_pill(
          id = "evaluate_tabs", # Add this ID

          # nav_panel Home
          nav_panel(
            "Home",

            br(),
            br(),

            h3("About the Marine Reserves"),

            card(title = "Data", height = "550px", dataTableOutput('table')),

            fluidRow(
              column(12, align = "right", next_btn("next_home"))
            )
          ),

          # nav_panel Design
          nav_panel(
            "Design",
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
            "Governance",
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
            "Biological",
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
            "Summary",
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
