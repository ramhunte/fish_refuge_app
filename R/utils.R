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
