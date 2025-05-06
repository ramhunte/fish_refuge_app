section_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    uiOutput(ns("content")),
    div(
      style = "margin-top: 20px;",
      actionButton(ns("back_btn"), "Back"),
      actionButton(ns("next_btn"), "Next", class = "ms-2")
    )
  )
}

section_module_server <- function(id, section_names, title_prefix = "") {
  moduleServer(id, function(input, output, session) {
    section_index <- reactiveVal(1)

    output$content <- renderUI({
      index <- section_index()
      section <- section_names[index]

      ui <- switch(
        section,
        "feasibility" = tagList(
          h3(paste(title_prefix, "- Feasibility")),
          p("How feasible is the proposed refuge design?"),
          sliderInput(
            session$ns("feasibility_score"),
            "Feasibility Score",
            1,
            5,
            3
          ),
          p("Rate the likelihood of successful implementation.")
        ),
        "socialization" = tagList(
          h3(paste(title_prefix, "- Socialization")),
          p("How well is the idea being socialized with stakeholders?"),
          sliderInput(
            session$ns("stakeholder_engagement"),
            "Engagement Score",
            1,
            5,
            3
          )
        ),
        "design" = tagList(
          h3(paste(title_prefix, "- Design")),
          p("Assess the technical quality of the design."),
          sliderInput(session$ns("design_quality"), "Design Quality", 1, 5, 3)
        ),
        "permanence" = tagList(
          h3(paste(title_prefix, "- Permanence")),
          p("How permanent is the proposed implementation?"),
          sliderInput(
            session$ns("permanence_rating"),
            "Permanence Score",
            1,
            5,
            3
          )
        ),
        "management" = tagList(
          h3(paste(title_prefix, "- Management")),
          p("Evaluate the management plan."),
          sliderInput(
            session$ns("management_score"),
            "Management Quality",
            1,
            5,
            3
          )
        ),
        p("Content not found.")
      )

      tagList(ui)
    })

    observeEvent(input$next_btn, {
      if (section_index() < length(section_names)) {
        section_index(section_index() + 1)
      } else {
        showNotification(
          "You're already on the last section.",
          type = "message"
        )
      }
    })

    observeEvent(input$back_btn, {
      if (section_index() > 1) {
        section_index(section_index() - 1)
      } else {
        showNotification(
          "You're already on the first section.",
          type = "message"
        )
      }
    })
  })
}
