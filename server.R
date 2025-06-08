server <- function(input, output, session) {
  ###################### module servers #######################
  # home_server("home")
  # design_server("design")
  # governance_server("governance")
  # biological_server("biological")
  home_vals <- home_server("home")
  design_vals <- design_server("design")
  governance_vals <- governance_server("governance")
  biological_vals <- biological_server("biological")

  summary_server(
    "summary",
    h_vals = home_vals,
    d_vals = design_vals,
    g_vals = governance_vals,
    b_vals = biological_vals
  )

  # data table render
  output$table <- renderDataTable(data)

  ###########################################################

  ###################### tab updates #######################

  observeEvent(input$next_home, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Gestión y diseño")
  })

  observeEvent(input$prev_design, {
    updateTabsetPanel(
      session,
      "evaluate_tabs",
      selected = "Detalles de la reserva"
    )
  })
  observeEvent(input$next_design, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Gobernanza")
  })

  observeEvent(input$prev_governance, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Gestión y diseño")
  })
  observeEvent(input$next_governance, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Biológica")
  })

  observeEvent(input$prev_biological, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Gobernanza")
  })

  observeEvent(input$next_biological, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Resumen")
  })

  observeEvent(input$prev_summary, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Biológica")
  })
}
