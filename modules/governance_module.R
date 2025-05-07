governance_ui <- function(id) {
  ns <- NS(id)
  tagList(
    ############################## 1 Data Management ##############################
    div(
      style = "text-align: center;",
      h2("Fase #1: Data Management"),
      p(
        " Consiste en documentar la utilización de protocolos de monitoreo y manejo de bases de datos para el levantamiento y análisis de información."
      )
    ),
    br(),

    # 1.1
    h3("1.1 Monitoreo biofísico de la herramienta de manejo."),

    p(
      "Se refiere a la ejecución sistemática y constante de monitoreo, para levantamiento de información biológica para evaluar el funcionamiento de la herramienta de manejo. El periodo de tiempo a considerar es, desde que se establecio la herramienta de manejo, hasta el momento de la evaluación."
    ),

    selectInput(
      inputId = "1.1",
      label = NULL,
      choices = c(
        "1 - No se ha realizado ningún monitoreo.",
        "2 - Se ha realizado monitoreo una sola vez en periodo evaluado.",
        "3 - Se realizó monitoreo el 50% del periodo evaluado.",
        "4 - Se realizó monitoreo el 75% del periodo evaluado.",
        "5 - Se realizó monitoreo el 100% del periodo evaluado."
      ),
      selected = "3 - Se realizó monitoreo el 50% del periodo evaluado."
    ),
    br(),

    # 1.2
    h3("1.2 Monitoreo complementario de la herramienta de manejo."),

    p(
      "Se refiere a la ejecución sistemática y constante de campañas de monitoreo complementarias (ej. Pesqueros, sociales o económicas). El periodo de tiempo a considerar es, desde que se establecio la herramienta de manejo, hasta el momento de la evaluación."
    ),

    selectInput(
      inputId = "1.1",
      label = NULL,
      choices = c(
        "1 - No se ha realizado ningún monitoreo.",
        "2 - Se ha realizado monitoreo una sola vez.",
        "3 - Se realizó monitoreo el 50% del periodo evaluado.",
        "4 - Se realizó monitoreo el 75% del periodo evaluado.",
        "5 - Se realizó monitoreo el 100% del periodo evaluado."
      ),
      selected = "3 - Se realizó monitoreo el 50% del periodo evaluado."
    ),

    br(),

    # 1.3
    h3("1.3 Manejo de datos de monitoreo."),

    p(
      "Se refiere a realizar el manejo adecuado de la información colectada, revisar y curar bases de datos, así como analizar e interpretar la información."
    ),

    selectInput(
      inputId = "1.3",
      label = NULL,
      choices = c(
        "1 - No se cuenta con una base de datos digital.",
        "2 - Base de datos incompleta y/o sin revisión.",
        "3 - Base de datos revisada y lista para analizar.",
        "4 - Análisis de datos completo. Información interpretada.",
        "5 - Se cuenta con un reporte tecnico de resultados"
      ),
      selected = "3 - Base de datos revisada y lista para analizar."
    ),

    br(),

    ############################## 2 Decision Making ##############################

    div(
      style = "text-align: center;",
      h2("Fase #2: Decision Making"),
      p(
        "Documenta el manejo y organización por parte del grupo que administra la herramienta de manejo."
      )
    ),
    br(),

    # 2.1
    h3("2.1 Comité de manejo de la herramienta de manejo."),

    p(
      "Se refiere a la integración de un comité de manejo de la herramienta de manejo."
    ),

    selectInput(
      inputId = "2.1",
      label = NULL,
      choices = c(
        "1 - No se ha organizado un comité.",
        "2 - El comité esta en proceso de conformación.",
        "3 - Existe un comité pero no opera de manera eficiente.",
        "4 - ",
        "5 - El comité maneja la adecuadamente la herramienta de manejo."
      ),
      selected = "3 - Existe un comité pero no opera de manera eficiente.",
    ),
    br(),

    # 2.2
    h3("2.2 Mujeres en el comité de manejo."),

    p(
      "Se refiere a la integración de mujeres de manera igualitaria en la toma de decisiones y acciones de manejo de la herramienta de manejo."
    ),

    selectInput(
      inputId = "2.2",
      label = NULL,
      choices = c(
        "1 - No hay mujeres en el comité.",
        "2 - El 10% de los integrantes del comité son mujeres.",
        "3 - El 30% de los integrantes del comité son mujeres.",
        "4 - El 40% de los integrantes del comité son mujeres.",
        "5 - Al menos el 50% de los integrantes del comité son mujeres."
      ),
      selected = "3 - El 30% de los integrantes del comité son mujeres.",
    ),
    br(),

    # 2.3
    h3("2.3 Juventudes en el comité de manejo."),

    p(
      "Se refiere a la integración juventudes (18-35 años) en la toma de decisiones y acciones de manejo de la herramienta de manejo."
    ),

    selectInput(
      inputId = "2.3",
      label = NULL,
      choices = c(
        "1 - No hay juventudes en el comité.",
        "2 - El 10% de los integrantes del comité son juventudes.",
        "3 - El 20% de los integrantes del comité son juventudes.",
        "4 - ",
        "5 - El menos el 30% o mas de los integrantes del comité son juventudes."
      ),
      selected = "3 - El 30% de los integrantes del comité son mujeres.",
    ),
    br(),

    # 2.4
    h3("2.4 Vigilancia comunitaria de la herramienta de manejo."),

    p(
      "Esta actividad consiste en crear un sistema de vigilancia comunitaria que permita el resguardo de los recursos, con el objeto de minimizar actividades como la pesca ilegal que afecten herramienta de manejo. Lo anterior con apoyo de personas con el conocimiento técnico y equipo necesario para la actividad."
    ),

    selectInput(
      inputId = "2.4",
      label = NULL,
      choices = c(
        "1 - No hay un programa de vigilancia comunitaria.",
        "2 - Se han realizado capacitaciones en vigilancia comunitaria.",
        "3 - Existe un grupo de vigilancia comunitaria y cuenta con recursos para la vigilancia.",
        "4 - Se realiza vigilancia de manera constante.",
        "5 - Al menos el 50% de los integrantes del comité son mujeres."
      ),
      selected = "3 - Existe un grupo de vigilancia comunitaria y cuenta con recursos para la vigilancia.",
    ),
    br(),

    # 2.5
    h3("2.5 Respeto de la herramienta de manejo."),

    p(
      "Los promoventes respetan el establecimiento de la herramienta de manejo, y no hay incidencia de incumplimiento por parte de los manejadores. Este apartado no considera la incidencia de pesca ilegal de agentes externos."
    ),

    selectInput(
      inputId = "2.5",
      label = NULL,
      choices = c(
        "1 - No se respeta la herramienta de manejo.",
        "2 - ",
        "3 - ",
        "4 - Existe un programa para mantener el orden de la herramienta de manejo.",
        "5 - Se respeta la herramienta de manejo."
      ),
      selected = "3 - ",
    ),
    br(),

    # 2.6
    h3(
      "2.6 Sanciones administrativas por no respetar la herramienta de manejo."
    ),

    p(
      "Se refiere a la aplicación de medidas disciplinarias por faltar al reglamento de la herramienta de manejo, implementadas por la instancias correspondientes (gobierno, cooperativas, comités de manejo)."
    ),

    selectInput(
      inputId = "2.6",
      label = NULL,
      choices = c(
        "1 - No existen sanciones.",
        "2 - Existen sanciones pero no se aplican.",
        "3 - Se hace vigilancia pero no se elaboran denuncias.",
        "4 - Se reportan denuncias de actividades ilícitas, pero no se conoce si se aplican sanciones.",
        "5 - Se aplican sanciones cuando es necesario."
      ),
      "3 - Se hace vigilancia pero no se elaboran denuncias.",
    ),
    br(),

    # 2.7
    h3(
      "2.7 Alianzas con otro actores."
    ),

    p(
      "Se refiere a alianzas de colaboración para el manejo de la herramienta de manejo, ya sea con otras organizaciones pesqueras, OSC, Gobierno, privados."
    ),

    selectInput(
      inputId = "2.7",
      label = NULL,
      choices = c(
        "1 - ",
        "2 - No existen alianzas para el manejo.",
        "3 - Se están construyendo alianzas para el manejo.",
        "4 - Se ha colorado con al menos un aliado para el manejo de la herramienta de manejo.",
        "5 - Se mantienen alianzas de colaboración para el manejo."
      ),
      "3 - Se están construyendo alianzas para el manejo.",
    ),
    br(),

    # 2.8
    h3(
      "2.8 Escalamiento de la herramienta de manejo. "
    ),

    p(
      "Los administradores de la herramienta de manejo, promueven en espacios de acción colectiva los beneficios de una reserva marina. Además, transfieren  conocimiento  a otros actores."
    ),

    selectInput(
      inputId = "2.8",
      label = NULL,
      choices = c(
        "1 - Los administradores no han compartido logros y conocimiento",
        "2 - ",
        "3 - Los administradores comparten sus logros",
        "4 - ",
        "5 - Los administradores Transfieren conocimiento para escalar la solución"
      ),
      "3 - Los administradores comparten sus logros",
    ),
    br(),

    ############################## 3 Socioeconomic ##############################

    div(
      style = "text-align: center;",
      h2("Fase #3: Socioeconomic"),
      p(
        "Socioeconómicos."
      )
    ),
    br(),

    # 3.1
    h3("3.1  Costeo operativo de la herramienta de manejo."),

    p(
      "Es necesario estimar costos de cada actividad operativa de la herramienta de manejo."
    ),

    selectInput(
      inputId = "3.1",
      label = NULL,
      choices = c(
        "1 - No hay un costeo operativo.",
        "2 - Se ha costeado el 30% de las actividades.",
        "3 - Se ha costeado el 50% de las actividades.",
        "4 - Se ha costeado el  80% de las actividades.",
        "5 - Se cuenta con costeo de 100% las actividades."
      ),
      selected = "3 - Se ha costeado el 50% de las actividades.",
    ),
    br(),

    # 3.2
    h3("3.2  Procuración de recursos privados."),

    p(
      "Es necesario hacer un plan de recaudación para cubrir los costo operativos durante la vigencia de la herramienta de manejo,  identificar oportunidades de financiamiento."
    ),

    selectInput(
      inputId = "3.2",
      label = NULL,
      choices = c(
        "1 - No hay propuestas de recaudación.",
        "2 - Se ha sometido al menos una propuesta de financiamiento pero no han sido aprobadas.",
        "3 - Se recaudó de recurso privado  el 10% de la operación anual.",
        "4 - Se cuenta con recursos para cubrir el 30% de la operación anual.",
        "5 - Se cuenta con recursos para cubrir el 60% de la operación anual."
      ),
      selected = "3 - Se recaudó de recurso privado  el 10% de la operación anual.",
    ),
    br(),

    # 3.3
    h3("3.3  Procuración de recursos de gobierno."),

    p(
      "Es necesario hacer un plan de recaudación para cubrir los costo operativos durante la vigencia de la herramienta de manejo, además es necesario identificar oportunidades de capacitación y financiamiento."
    ),

    selectInput(
      inputId = "3.3",
      label = NULL,
      choices = c(
        "1 - No hay propuestas de recaudación.",
        "2 - Se ha sometido al menos una propuesta de financiamiento pero no han sido aprobadas.",
        "3 - Se recaudó de recursos del gobierno el 10% de la operación anual.",
        "4 - Se recaudó de recursos del gobierno el 30% de la operación anual.",
        "5 - Se recaudó de recursos del gobierno el 50% de la operación anual."
      ),
      selected = "3 - Se recaudó de recursos del gobierno el 10% de la operación anual.",
    ),
    br(),

    # 3.4
    h3(
      "3.4 Incremento de capturas en zonas colindantes a la herramienta de manejo. "
    ),

    p(
      "Volumen anual (en Kg) por especie, arribado por la organización o grupo pesquero. Los arribos anuales deben de ser recolectados por cada comunidad pesquera u organización."
    ),

    selectInput(
      inputId = "3.4",
      label = NULL,
      choices = c(
        "1 - ",
        "2 - Se percibe el incremento de capturas.",
        "3 - Se hace un programa para registrar incremento de capturas.",
        "4 - ",
        "5 - Se ha registrado incremento de capturas."
      ),
      selected = "3 - Se hace un programa para registrar incremento de capturas.",
    ),
    br(),

    # 3.5
    h3("3.5 Beneficios en el mercado por la herramienta de manejo."),

    p(
      "Se refiere a la obtención de beneficios en el mercado por tener la herramienta de manejo. Por ejemplo, mejore precio, mas facilidad de venta del producto, reconocimiento el mercado."
    ),

    selectInput(
      inputId = "3.5",
      label = NULL,
      choices = c(
        "1 - No se monitorea el efecto de la reserva marina en el precio de mercado del producto, o su reconocimiento, etc.",
        "2 - ",
        "3 - Se da a conocer al mercado el manejo de reserva marina, pero no se tiene ningún beneficio.",
        "4 - ",
        "5 - Se tiene al menos un benéfico con el mercado."
      ),
      selected = "3 - Se da a conocer al mercado el manejo de reserva marina, pero no se tiene ningún beneficio.",
    ),
    br(),

    # 3.6
    h3("3.6 Oportunidades económicas alternativas a la pesca."),

    p(
      "Nivel de oportunidades económicas que se generan después de la implementación de la herramienta de manejo. Las oportunidades económicas alternativas pueden ser directamente de actividades pesqueras u otras actividades como turismo, empleos temporales para actividades de vigilancia o ciencia ciudadana, pero que estas sean remuneradas."
    ),
    selectInput(
      inputId = "3.6",
      label = NULL,
      choices = c(
        "1 - No se tienen actividades alternativas a la pesca.",
        "2 - Se ha planificado la ejecución de actividades alternativas.",
        "3 - Se implementan actividades alternativas piloto.",
        "4 - ",
        "5 - Se da continuidad a actividades alternativas."
      ),
      selected = "3 - Se implementan actividades alternativas piloto.",
    ),
    br(),
  )
}

governance_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Example: observe or return values
    observe({
      # Print values or store in a reactiveValues list
      print(input$data_score)
      print(input$governance_score)
      print(input$socio_score)
    })
  })
}
