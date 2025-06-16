header <- function() {
  # adding NOAA logo
  tags$head(
    tags$script(HTML(
      '$(document).ready(function() {
        $(".navbar .container-fluid")
          .css({"position": "relative"})
          .append("<a href=\'https://cobi.org.mx/en/about-us\' target=\'_blank\'><img id=\'myImage\' src=\'logo.png\'></a>");
      });'
    )),
    tags$style(HTML(
      '
      .navbar {
        min-height: 56px !important;
      }

      #myImage {
        position: absolute;
        right: 10px;
        top: -25px;
        height: 90px;
      }

      @media (max-width: 992px) {
        #myImage {
          position: fixed;
          right: 10%;
          top: 0.5%;
        }
      }
      '
    ))
  )
}
