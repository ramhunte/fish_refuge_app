server <- function(input, output, session) {
  ###################### module servers #######################
  # home_server("home")
  design_server("design")
  governance_server("governance")
  biological_server("biological")
  summary_server("summary")

  # data table render
  output$table <- renderDataTable(data)

  ###########################################################

  ###################### tab uodates #######################

  observeEvent(input$next_home, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Design")
  })

  observeEvent(input$prev_design, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Home")
  })
  observeEvent(input$next_design, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Governance")
  })

  observeEvent(input$prev_governance, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Design")
  })
  observeEvent(input$next_governance, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Biological")
  })

  observeEvent(input$prev_biological, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Governance")
  })

  observeEvent(input$next_biological, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Summary")
  })

  observeEvent(input$prev_summary, {
    updateTabsetPanel(session, "evaluate_tabs", selected = "Biological")
  })
}
