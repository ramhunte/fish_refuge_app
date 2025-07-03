####################################################################
############################## UI ##############################
####################################################################
summary_ui <- function(id) {
  ns <- NS(id)
  tagList(
    br(),
    br(),

    bslib::layout_columns(
      col_widths = c(4, 4, 4), # 3 equal-width columns

      ############################# Design #################################
      # Card 1
      div(
        div(
          style = "text-align: center;",
          h3("Gestión y diseño", style = "white-space: nowrap;")
        ),

        bslib::value_box(
          title = tags$span(
            "Puntuación total: gestión y diseño",
            style = "white-space: nowrap;"
          ),,
          value = uiOutput(ns("d_tot_vb")),
          showcase = bs_icon("check-lg"),
          theme_color = "secondary"
        ),

        bslib::card(
          class = "bg-success text-white",
          # bslib::card_header(
          #   "Design",
          #   style = "text-align: center; font-size: 1.5rem; font-weight: bold;"
          # ),
          bslib::value_box(
            title = "Fase #1: Factibilidad",
            value = uiOutput(ns("d1_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #2: Socialización",
            value = uiOutput(ns("d2_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #3: Diseño",
            value = uiOutput(ns("d3_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #4: Gestión",
            value = uiOutput(ns("d4_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #5: Permanencia",
            value = uiOutput(ns("d5_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          )
        )
      ),

      ############################# Governance #################################
      div(
        div(
          style = "text-align: center;",
          h3("Gobernanza")
        ),
        bslib::value_box(
          title = "Puntuación total: gobernanza",
          value = uiOutput(ns("g_tot_vb")),
          showcase = bs_icon("check-lg"),
          theme_color = "secondary"
        ),

        bslib::card(
          class = "bg-success text-white",
          # bslib::card_header(
          #   "Design",
          #   style = "text-align: center; font-size: 1.5rem; font-weight: bold;"
          # ),
          bslib::value_box(
            title = "Fase #1: Gestión de datos",
            value = uiOutput(ns("g1_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #2: Toma de decisiones",
            value = uiOutput(ns("g2_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          ),
          bslib::value_box(
            title = "Fase #3: Socioeconómicos",
            value = uiOutput(ns("g3_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          )
        )
      ),

      ############################# Biological #################################
      div(
        div(
          style = "text-align: center;",
          h3("Biológica")
        ),

        bslib::value_box(
          title = "Puntuación total: biológica",
          value = uiOutput(ns("b_tot_vb")),
          showcase = bs_icon("check-lg"),
          theme_color = "secondary"
        ),

        bslib::card(
          class = "bg-success text-white",
          # bslib::card_header(
          #   "Design",
          #   style = "text-align: center; font-size: 1.5rem; font-weight: bold;"
          # ),
          bslib::value_box(
            title = "Fase #1: Biológica",
            value = uiOutput(ns("b1_vb")),
            showcase = bs_icon("dash"),
            theme_color = "secondary"
          )
        )
      ),
    ),

    br(),
    br(),


    div(style = "font-size: 24px;", textOutput(ns("promoventeOutput"))),

    br(),

    div(style = "font-size: 24px;", textOutput(ns("comunidadOutput"))),

    br(),

    div(style = "font-size: 24px;", textOutput(ns("estadoOutput"))),

    br(),

    div(style = "font-size: 24px;", textOutput(ns("rmOutput"))),

    br(),

    div(style = "font-size: 24px;", textOutput(ns("catOutput"))),

    br(),

    downloadButton(ns("downBtn"), "Descargar datos")
  )
}


####################################################################
############################## server ##############################
####################################################################
summary_server <- function(id, h_vals, d_vals, g_vals, b_vals) {
  moduleServer(id, function(input, output, session) {
    # reserve information
    output$promoventeOutput <- renderText({
      paste0("Promovente: ", req(h_vals$promovente()))
    })

    output$comunidadOutput <- renderText({
      paste0("Comunidad: ", req(h_vals$comunidad()))
    })

    output$estadoOutput <- renderText({
      paste0("Estado: ", req(h_vals$estado()))
    })

    output$rmOutput <- renderText({
      paste0("Reserva Marina: ", req(h_vals$rm()))
    })

    output$catOutput <- renderText({
      paste0("Categoría de reserva: ", req(h_vals$cat()))
    })

    # design
    output$d1_vb <- val_ui(d_vals$d1)
    output$d2_vb <- val_ui(d_vals$d2)
    output$d3_vb <- val_ui(d_vals$d3)
    output$d4_vb <- val_ui(d_vals$d4)
    output$d5_vb <- val_ui(d_vals$d5)
    output$d_tot_vb <- val_ui(d_vals$d_tot)
    # governance
    output$g1_vb <- val_ui(g_vals$g1)
    output$g2_vb <- val_ui(g_vals$g2)
    output$g3_vb <- val_ui(g_vals$g3)
    output$g_tot_vb <- val_ui(g_vals$g_tot)
    # biological
    output$b1_vb <- val_ui(b_vals$b1)
    output$b_tot_vb <- val_ui(b_vals$b_tot)
    # total
    tot_avg <- reactive({
      mean(
        c(d_vals$d_tot(), g_vals$g_tot(), b_vals$b_tot()),
        na.rm = TRUE
      )
    })

    output$tot_vb <- val_ui(function() tot_avg())

    ########################### data frames ################################

    # Design

    des_df <- reactive({
      tmp <- des_tmp
      tmp[1, c(1:10, 12:14, 16:23, 25:31, 33:35, 37:42)] <- c(
        h_vals$promovente(),
        h_vals$comunidad(),
        h_vals$estado(),
        h_vals$rm(),
        h_vals$cat(),
        d_vals$ds()[1],
        d_vals$ds()[2],
        d_vals$ds()[3],
        d_vals$ds()[4],
        d_vals$ds()[5],
        d_vals$ds()[6],
        d_vals$ds()[7],
        d_vals$ds()[8],
        d_vals$ds()[9],
        d_vals$ds()[10],
        d_vals$ds()[11],
        d_vals$ds()[12],
        d_vals$ds()[13],
        d_vals$ds()[14],
        d_vals$ds()[15],
        d_vals$ds()[16],
        d_vals$ds()[17],
        d_vals$ds()[18],
        d_vals$ds()[19],
        d_vals$ds()[20],
        d_vals$ds()[21],
        d_vals$ds()[22],
        d_vals$ds()[23],
        d_vals$ds()[24],
        d_vals$ds()[25],
        d_vals$ds()[26],
        d_vals$d1(),
        d_vals$d2(),
        d_vals$d3(),
        d_vals$d4(),
        d_vals$d5(),       # this is the actual value
        d_vals$d_tot()     # not the rendered UI output
      )
      tmp
    })



    # Governance
    gov_df <- reactive({
      tmp <- gov_tmp
      tmp[1, c(1:8, 10:17, 19:24, 26:29)] <- c(
        h_vals$promovente(),
        h_vals$comunidad(),
        h_vals$estado(),
        h_vals$rm(),
        h_vals$cat(),
        g_vals$gs()[1],
        g_vals$gs()[2],
        g_vals$gs()[3],
        g_vals$gs()[4],
        g_vals$gs()[5],
        g_vals$gs()[6],
        g_vals$gs()[7],
        g_vals$gs()[8],
        g_vals$gs()[9],
        g_vals$gs()[10],
        g_vals$gs()[11],
        g_vals$gs()[12],
        g_vals$gs()[13],
        g_vals$gs()[14],
        g_vals$gs()[15],
        g_vals$gs()[16],
        g_vals$gs()[17],
        g_vals$g1(),
        g_vals$g2(),
        g_vals$g3(),       # this is the actual value
        g_vals$g_tot()     # not the rendered UI output
      )
      tmp
    })


    # Biological
    bio_df <- reactive({
      tmp <- bio_tmp
      tmp[1, c(1:16, 18, 19)] <- c(
        h_vals$promovente(),
        h_vals$comunidad(),
        h_vals$estado(),
        h_vals$rm(),
        h_vals$cat(),
        b_vals$bs()[1],
        b_vals$bs()[2],
        b_vals$bs()[3],
        b_vals$bs()[4],
        b_vals$bs()[5],
        b_vals$bs()[6],
        b_vals$bs()[7],
        b_vals$bs()[8],
        b_vals$bs()[9],
        b_vals$bs()[10],
        b_vals$bs()[11],
        b_vals$b1(),       # this is the actual value
        b_vals$b_tot()     # not the rendered UI output
      )
      tmp
    })


    ########################### Download button ############################

    output$downBtn <- downloadHandler(
      filename = function() {
        "datos.zip"
      },
      content = function(file) {
        # Create a temp dir to hold individual CSVs
        tmpdir <- tempdir()
        des_path <- file.path(tmpdir, "gestión_y_diseño.csv")
        gov_path <- file.path(tmpdir, "gobernanza.csv")
        bio_path <- file.path(tmpdir, "biológica.csv")

        # Static file path
        static_src <- "data/description.csv"
        static_dst <- file.path(tmpdir, "descripción.csv")

        # Write each data frame
        write.csv(des_df(), des_path, row.names = FALSE)
        write.csv(gov_df(), gov_path, row.names = FALSE)
        write.csv(bio_df(), bio_path, row.names = FALSE)

        # Copy the static file
        file.copy(static_src, static_dst, overwrite = TRUE)



        # Zip them
        zip::zipr(
          zipfile = file,
          files = c(des_path, gov_path, bio_path, static_dst),
          root = tmpdir
        )
      },
      contentType = "application/zip"
    )



  })
}



