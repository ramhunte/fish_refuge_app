####################### SUMMARY

val_ui <- function(reactive_val) {
  renderUI({
    val <- reactive_val()

    if (!is.na(val)) {
      val <- round(val, 2)

      color <- if (val >= 0 && val < 2) {
        "red"
      } else if (val >= 2 && val < 4) {
        "orange"
      } else if (val >= 4) {
        "green"
      } else {
        "gray"
      }

      HTML(paste0(
        "<span style='color:",
        color,
        "; font-weight:bold;'>",
        val,
        "</span>"
      ))
    } else {
      HTML("<span style='color:gray;'>NA</span>")
    }
  })
}


######################

next_btn <- function(id) {
  actionButton(
    inputId = id,
    label = tagList(
      "Next",
      span(style = "margin-left: 9px;", icon("arrow-right"))
    ),
    width = 130,
    class = "p-3 m-5"
  )
}

back_btn <- function(id) {
  actionButton(
    inputId = id,
    label = tagList(
      icon("arrow-left"),
      span(style = "margin-left: 9px;", "Back")
    ),
    width = 130,
    class = "p-3 m-5"
  )
}
