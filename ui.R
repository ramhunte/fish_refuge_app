ui <- page_navbar(
  title = "Fish Refuge Evaluation App",
  theme = bs_theme(bootswatch = "flatly"),

  nav_panel("Overview", h2("Welcome!")),

  nav_panel(
    "Evaluate",
    navset_tab(
      nav_panel("Home", h3("Home content")),
      nav_panel(
        "Design",
        fluidRow(
          column(1),
          column(10, design_ui("design")),
          column(1)
        )
      ),
      nav_panel("Governance", governance_ui("governance")),
      nav_panel("Biological", biological_ui("biological"))
    )
  ),

  nav_panel("Summary", h2("Summary content"))
)
