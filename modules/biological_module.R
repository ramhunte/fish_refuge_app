####################################################################
############################## UI ##############################
####################################################################

biological_ui <- function(id) {
  ns <- NS(id)
  tagList(
    br(),
    br(),
    br(),
    ############################## 1 Biological ##############################
    div(
      style = "text-align: center;",
      h2("Fase #1: Biológica"),
      p(
        "Consiste en documentar cambios según acciones puntuales de implementación como levantamiento de información biológico y el análisis de los mismos. Esto con el objeto de hacer notar los cambios dentro y fuera de la herramienta de manejo."
      ),
    ),
    br(),

    bslib::card(
      class = "bg-primary text-white",

      # 1.1
      h3("1.1 Abundancia general."),

      p(
        "Número (absoluto) de individuos de la población. P.e., cantidad de individuos de la misma especie en un lugar y un tiempo determinados."
      ),

      selectInput(
        inputId = ns("b1_1"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones de abundancia." = 1,
          "2 - La abundancia es igual a la línea base." = 2,
          "3 - La abundancia es 5% superior que la línea base." = 3,
          "4 - La abundancia es 10% superior que la línea base." = 4,
          "5 - La abundancia es ≥15% superior o mayor a la línea base." = 5,
          "NA" = NA
        ),
        selected = 3
      ),
      br(),

      # 1.2
      h3("1.2 Abundancia de especies clave."),

      p(
        "Se refiere a la abundancia de especies de alto valor comercial o ecológico que pueden ser indicadoras de éxito."
      ),

      selectInput(
        inputId = ns("b1_2"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones de abundancia." = 1,
          "2 - La abundancia es igual a la línea base." = 2,
          "3 - La abundancia es 5% superior que la línea base." = 3,
          "4 - La abundancia es 10% superior que la línea base." = 4,
          "5 - La abundancia es ≥15% superior o mayor a la línea base." = 5,
          "NA" = NA
        ),
        selected = 3
      ),
      br(),

      # 1.3
      h3("1.3 Densidad general."),

      p(
        "La densidad expresa el número de organismos por unidad de área. La densidad nos permite identificar si el número total de organismos ha cambiado a través del tiempo, sin importar sus tallas o pesos."
      ),
      selectInput(
        inputId = ns("b1_3"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones densidad." = 1,
          "2 - La densidad es igual a la línea base." = 2,
          "3 - La densidad es 5% superior que la línea base." = 3,
          "4 - La densidad es 10% superior que la línea base." = 4,
          "5 - La densidad es ≥15% superior o mayor a la línea base." = 5,
          "NA" = NA
        ),
        selected = 3
      ),
      br(),

      # 1.4
      h3("1.4 Densidad de especies clave."),

      p(
        "Se refiere a la densidad de especies de alto valor comercial o ecológico que pueden ser indicadoras de éxito."
      ),
      selectInput(
        inputId = ns("b1_4"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones densidad." = 1,
          "2 - La densidad es igual a la línea base." = 2,
          "3 - La densidad es 5% superior que la línea base." = 3,
          "4 - La densidad es 10% superior que la línea base." = 4,
          "5 - La densidad es ≥15% superior o mayor a la línea base." = 5,
          "NA" = NA
        ),
        selected = 3
      ),
      br(),

      # 1.5
      h3("1.5 Biomasa general."),

      p(
        "La biomasa se refiere a la suma total de la masa (peso) de los organismos presentes, esta puede ser utilizada para mostrar la recuperación de las poblaciones."
      ),

      selectInput(
        inputId = ns("b1_5"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones de biomasa." = 1,
          "2 - La biomasa es igual a la línea base." = 2,
          "3 - La biomasa es 5% superior que la línea base." = 3,
          "4 - La biomasa es 10% superior que la línea base." = 4,
          "5 - La biomasa es ≥15% superior o mayor a la línea base." = 5,
          "NA" = NA
        ),
        selected = 3
      ),
      br(),

      # 1.6
      h3("1.6 Biomasa de especies clave."),

      p(
        "Se refiere a la biomasa de especies de alto valor comercial o ecológico que pueden ser indicadoras de éxito."
      ),

      selectInput(
        inputId = ns("b1_6"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones de biomasa." = 1,
          "2 - La biomasa es igual a la línea base." = 2,
          "3 - La biomasa es 5% superior que la línea base." = 3,
          "4 - La biomasa es 10% superior que la línea base." = 4,
          "5 - La biomasa es ≥15% superior o mayor a la línea base." = 5,
          "NA" = NA
        ),
        selected = 3,
      ),
      br(),

      # 1.7
      h3("1.7 Índice de diversidad de Shannon."),

      p(
        "El Índice de diversidad de Shannon nos indica qué tan común o frecuente es cada especie al comparar la abundancia de cada especie con respecto a la abundancia total ( i.e. abundancia relativa)."
      ),

      selectInput(
        inputId = ns("b1_7"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones del índice de Shannon." = 1,
          "2 - El índice de Shannon es menor a 2." = 2,
          "3 - El índice de Shannon esta entre 2.1 y 2.4." = 3,
          "4 - El índice de Shannon esta entre 2.5 y 3." = 4,
          "5 - El índice de Shannon es mayor a 3." = 5,
          "NA" = NA
        ),
        selected = 3
      ),
      br(),

      # 1.8
      h3("1.8 Riqueza general."),

      p(
        "La riqueza es una medida directa de la diversidad, permitiéndonos comprender cómo las comunidades están estructuradas al identificar el número de especies que habitan una zona."
      ),

      selectInput(
        inputId = ns("b1_8"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones de la  riqueza." = 1,
          "2 - " = 2,
          "3 - La riqueza es igual a la línea base." = 3,
          "4 - " = 4,
          "5 - La riqueza es superior a la línea base." = 5,
          "NA" = NA
        ),
        selected = 3
      ),
      br(),

      # 1.9
      h3("1.9 Riqueza de especies clave."),

      p(
        "Se refiere a la riqueza de especies de alto valor comercial o ecológico que pueden ser indicadoras de éxito."
      ),

      selectInput(
        inputId = ns("b1_9"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones de la  riqueza." = 1,
          "2 - " = 2,
          "3 - La riqueza es igual a la línea base." = 3,
          "4 - " = 4,
          "5 - La riqueza es superior a la línea base." = 5
        ),
        selected = 3
      ),
      br(),

      # 1.10
      h3("1.10 Estructura de tallas general."),

      p(
        "Se refiere al registro de las tallas de organismos, para determinar los cambios en el tamaño de los organismos."
      ),

      selectInput(
        inputId = ns("b1_10"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones de la estructura de tallas." = 1,
          "2 - La talla de organismos es igual a la línea base." = 2,
          "3 - Se registran tallas mayores a la línea base entre el 10-30% de los organismos." = 3,
          "4 - Se registran tallas mayores a la línea base entre el 30-50% de los organismos." = 4,
          "5 - Se registran tallas mayores a la línea base en ≥50% de los organismos." = 5,
          "NA" = NA
        ),
        selected = 3
      ),
      br(),

      # 1.11
      h3("1.11 Estructura de tallas de especies clave."),

      p(
        "Se refiere al registro de las tallas de organismos, para determinar los cambios en el tamaño de los organismos claves."
      ),

      selectInput(
        inputId = ns("b1_11"),
        label = NULL,
        choices = c(
          "1 - No hay estimaciones de la estructura de tallas." = 1,
          "2 - La talla de peces es igual a la línea base." = 2,
          "3 - Se registran tallas mayores a la línea base en el 10-20% de los organismos." = 3,
          "4 - Se registran tallas mayores a la línea base en el 30-40% o más de los organismos." = 4,
          "5 - Se registran tallas mayores a la línea base en el 50% o más de los organismos." = 5,
          "NA" = NA
        ),
        selected = 3
      )
    ),
    br()
  )
}

####################################################################
############################## server ##############################
####################################################################

biological_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    b1 <- reactive({
      mean(
        as.numeric(
          c(
            input$b1_1,
            input$b1_2,
            input$b1_3,
            input$b1_4,
            input$b1_5,
            input$b1_6,
            input$b1_7,
            input$b1_8,
            input$b1_9,
            input$b1_10,
            input$b1_11
          )
        ),
        na.rm = TRUE
      )
    })

    b_tot <- reactive({
      mean(
        as.numeric(b1()),
        na.rm = TRUE
      )
    })

    return(list(
      b1 = b1,
      b_tot = b_tot
    ))
  })
}
