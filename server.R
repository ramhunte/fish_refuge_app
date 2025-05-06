server <- function(input, output, session) {
  design_server("design")
  governance_server("governance")
  biological_server("biological")
}
