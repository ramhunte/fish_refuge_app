####################################################################
############################## UI ##############################
####################################################################

design_ui <- function(id) {
  ns <- NS(id)
  tagList(
    br(),
    br(),
    br(),
    ############################## 1 ##############################
    div(
      style = "text-align: center;",
      h2("Fase #1: Feasibility"),
      p(
        "Consiste en realizar una investigación de campo y bibliográfica para tener detalle sobre el contexto ambiental, social, económico y de gobernanza, para determinar si establecer una red o una herramienta de manejo es factible y se alinea con las necesidades locales."
      )
    ),
    br(),
    bslib::card(
      class = "bg-primary text-white",
      # 1.1
      h3("1.1 Identificar la problemática y resultados esperados."),

      p(
        "Se refiere a la ejecución sistemática y constante de monitoreo, para levantamiento de información biológica para evaluar el funcionamiento de la herramienta de manejo. El periodo de tiempo a considerar es, desde que se establecio la herramienta de manejo, hasta el momento de la evaluación."
      ),

      selectInput(
        inputId = "1.1",
        label = NULL,
        choices = c(
          "1 - No se ha realizado el ejercicio",
          "2 - Se han realizado reuniones de trabajo para colecta de información",
          "3 - Se cuenta con información sistematizada y curada de problemáticas y actores",
          "4 - ",
          "5 - Se cuenta con un documento en el que se ha identificado la problemática y resultados esperados."
        ),
        selected = "3 - Se cuenta con información sistematizada y curada de problemáticas y actores"
      ),
      br(),

      # 1.2
      h3("1.2 Identificar participantes y su nivel de involucramiento"),
      p(
        "Hacer un listado de problemáticas ambientales que se busca atender, considerando las causas y actores que dieron origen a este problema, y qué resultado se espera obtener. Este ejercicio se deberá de hacer con actores clave locales. Se imparte platica general de herramientas de manejo."
      ),
      selectInput(
        inputId = "1.2",
        label = NULL,
        choices = c(
          "1 - No se ha realizado identificación de participantes.",
          "2 - No se ha realizado identificación de participantes.",
          "3 - Se cuenta con una lista verificada y curada de participantes catalogados con primarios y secundarios.",
          "4 - Los participantes primarios identifican su rol en el proceso.",
          "5 - Los participantes primarios cumplen con su rol en el proceso."
        ),
        selected = "3 - Se cuenta con una lista verificada y curada de participantes catalogados con primarios y secundarios."
      ),
      br(),

      # 1.3
      h3(
        "1.3 Identificar áreas a conservar, sus objetivos y su compatibilidad ambiental, social y económica."
      ),
      p(
        "Se realiza una caracterización inicial con información bibliográfica y conocimiento tradicional, para conocer los ecosistemas y especies clave. Identificar iniciativas de conservación (áreas protegidas), actividades económicas como pesca, turismo, puertos de altura comerciales y turísticos, puentes, carreteras, presas, etc., con el objeto de determinar la compatibilidad con estos usos ya establecidos. "
      ),
      selectInput(
        inputId = "1.3",
        label = NULL,
        choices = c(
          "1 - No se ha identificado el área a conservar.",
          "2 - Se inició la identificación de actividades y usos.",
          "3 - Información de caracterización verificada y curada.",
          "4 - Se han identificado los sitios a proteger considerando el conocimiento tradicional.",
          "5 - Se ha elaborado un documento de caracterización y compatibilidad."
        ),
        selected = "3 - Información de caracterización verificada y curada."
      ),
      br(),

      h3("1.4 Opinión técnica."),
      p(
        "Con apoyo de personas con experiencia en la promoción de herramientas de manejo, se emite una opinión técnica de la viabilidad del proyecto."
      ),
      selectInput(
        inputId = "1.4",
        label = NULL,
        choices = c(
          "1 - No se ha realizado opinión técnica.",
          "2 - Se ha iniciado la colecta de información.",
          "3 - Se ha sistematizado e integrado toda la información.",
          "4 - Se ha revisado la información de viabilidad del proyecto.",
          "5 - Se cuenta con una opinión de viabilidad del proyecto."
        ),
        selected = "3 - Se ha sistematizado e integrado toda la información."
      ),

      h3("1.5 Plan de acción."),
      p(
        "Se realiza un plan de trabajo donde se especifican las actividades de socialización y diseño. Se definen participantes primarios y el rol de cada uno. El tiempo y el costo aproximado de cada actividad."
      ),
      selectInput(
        inputId = "1.5",
        label = NULL,
        choices = c(
          "1 - No se ha realizado el plan de acción.",
          "2 - Se inició con la identificación de actividades.",
          "3 - Se han integrado las actividades sin presupuesto.",
          "4 - Se integra presupuesto de las actividades.",
          "5 - Se cuenta con plan de acción y costos de actividades."
        ),
        selected = "3 - Se han integrado las actividades sin presupuesto.",
      )
    ),
    br(),
    br(),
    br(),
    br(),

    ############################## 2 ##############################
    # 2.1

    div(
      style = "text-align: center;",
      h2("Fase #2: Socialization"),
      p(
        " Consiste en realizar reuniones para difundir la iniciativa y sumar esfuerzos."
      )
    ),
    br(),

    bslib::card(
      class = "bg-primary text-white",
      # 2.1
      h3("2.1 Reuniones con líderes clave."),
      p(
        "Se debe de presentar la iniciativa de herramienta de manejo pesquero a los lideres del sectores de interés ( sector pesquero, turístico, gobierno municipal, estatal, federal, etc.). Invitarlos a formar parte de la iniciativa, además de solicitar su apoyo para  liderar la difusión de la herramienta de manejo pesquero."
      ),
      selectInput(
        inputId = "2.1",
        label = NULL,
        choices = c(
          "1 - No se ha realizado acercamiento con lideres.",
          "2 - Se han realizado reuniones con < 50% de los lideres",
          "3 - Se han tenido reuniones con > 50% y < 80% de lideres de los lideres.",
          "4 - Se han tenido reuniones con >80% de lideres.",
          "5 - Los lideres apoyan la iniciativa."
        ),
        "3 - Se han tenido reuniones con > 50% y < 80% de lideres de los lideres."
      ),
      br(),

      # 2.2
      h3("2.2 Reuniones sectoriales o multisectoriales."),
      p(
        "Con el apoyo de participantes clave (locales), se presenta la información a la mayor cantidad de personas posibles, con la finalidad de dar a conocer la iniciativa, los objetivos y sus alcances. Por ejemplo, sector pesquero, turístico, restaurantero, gobierno municipal, estatal, federal, etc.)"
      ),
      selectInput(
        inputId = "2.2",
        label = NULL,
        choices = c(
          "1 - No se ha realizado acercamiento con sectores.",
          "2 - Se han realizado reuniones con < 50% de los sectores",
          "3 - Se han tenido reuniones con > 50% y < 80% de lideres de los sectores",
          "4 - Se han tenido reuniones con >80% de los sectores.",
          "5 - La mayoría de los sectores están a favor."
        ),
        "3 - Se han tenido reuniones con > 50% y < 80% de lideres de los sectores",
      ),
      br(),

      # 2.3
      h3("2.3 Difusión en medios."),
      p(
        "Se difunde la iniciativa por diversos medios de comunicación con información clave. Es necesario identificar qué medios tienen mayor alcance en la localidad (perifoneo, foros locales de noticias, estaciones de radio, canales de televisión, gaceta local, redes sociales)."
      ),
      selectInput(
        inputId = "2.3",
        label = NULL,
        choices = c(
          "1 - No se ha realizado difusión.",
          "2 - Se esta creando el contenido para difusión.",
          "3 - Se ha iniciado la difusión en algunos medios locales.",
          "4 - Se ha difundido la información en el 50% de los medios locales.",
          "5 - Se ha difundido la información en los  medios locales de mayor impacto."
        ),
        "3 - Se ha iniciado la difusión en algunos medios locales.",
      )
    ),
    br(),
    br(),
    br(),
    br(),

    ############################## 3 ##############################

    div(
      style = "text-align: center;",
      h2("Fase #3: Design"),
      p(
        "Este proceso involucra la socialización con participantes primarios para determinar:  la forma, tamaño, localización, modalidad, el tipo de protección, objetivos de la herramienta de manejo, especies objetivo, temporalidad, indicadores de evaluación. Las acciones, costos, responsabilidades y tiempos de cumplimiento. Así como el proceso para solicitar la herramienta de manejo. (Actores primarios se refiere a aquellos grupos de personas que toman decisiones respecto al diseño y establecimiento del herramienta de manejo)."
      )
    ),
    br(),

    bslib::card(
      class = "bg-primary text-white",
      # 3.1
      h3("3.1 Presentación de información detallada."),
      p(
        "Se presenta información detallada del proceso de creación de una herramienta de manejo a los participantes primarios y secundarios, haciendo referencia de los tiempos, tramites administrativos, documentos de sustento, así como beneficios y casos de éxito."
      ),
      selectInput(
        inputId = "3.1",
        label = NULL,
        choices = c(
          "1 - No se ha presentado información detallada.",
          "2 - Se tiene agendado  reuniones con participantes clave.",
          "3 - Se ha presentado la información al 50% de participantes clave.",
          "4 - ",
          "5 - Se ha prestando la información a la mayoría de los participantes clave."
        ),
        "3 - Se ha presentado la información al 50% de participantes clave."
      ),
      br(),

      # 3.2
      h3(
        "3.2 Diseño participativo para establecer  objetivos, especies a protege e indicadores de evaluación de evaluación biológica."
      ),
      p(
        "El proceso de diseño debe de ser transparente, planeado y consensuado. Además se deben de rendir cuentas de las acciones y recursos económicos aplicados. Los objetivos de la herramienta de manejo y las especies a proteger son elaborados con el apoyo de información biológica y ambiental, y basados en el conocimiento local. Los indicadores de evaluación deberán de ser realistas y alcanzables (por ejemplo: biomasa, abundancia, estructura de tallas, diversidad). Se recomienda considerar los principios biofísicos para maximizar el éxito del diseño."
      ),
      selectInput(
        inputId = "3.2",
        label = NULL,
        choices = c(
          "1 - No se han realizado los talleres para definir los objetivos e indicadores.",
          "2 - Se tiene agendado talleres con sectores.",
          "3 - Se han realizado talleres con 50% de sectores participantes.",
          "4 - ",
          "5 - Se han realizado talleres con 100% de sectores participantes."
        ),
        "3 - Se han realizado talleres con 50% de sectores participantes.",
      ),
      br(),

      # 3.3
      h3("3.3 Diseño de la herramienta de manejo con enfoque biofísico."),
      p(
        "Se determina la ubicación, tamaño, forma temporalidad y número de polígonos. También, se identifican los riesgos en la zona (contaminación, huracanes, etc.) y los efectos del cambio climático. Se recomienda utilizar los principios biofísicos de diseño como referencia."
      ),
      selectInput(
        inputId = "3.3",
        label = NULL,
        choices = c(
          "1 - No se ha realizado taller de diseño.",
          "2 - Se han agendado talleres de diseño.",
          "3 - Se cuenta con 50% del diseño de la herramienta de manejo.",
          "4 - Se cuenta con un diseño sin considerar principios.",
          "5 - Se cuenta con un diseño considerando principios."
        ),
        "3 - Se cuenta con 50% del diseño de la herramienta de manejo."
      ),
      br(),

      # 3.4
      h3("3.4 Diseño  de la herramienta de manejo con enfoque socioeconómico."),
      p(
        "Se debe de considerar el fortalecimiento económico de los participantes con alternativas económicas compatibles con la herramienta de manejo, considerando el conocimiento local, experiencias de sitios aledaños o regionales e investigación científica en el proceso de diseño. También es necesario que la información sea abierta, clara y expedita. Se deben de comunicar de manera efectiva los avances y logros. Se debe de considerar fuentes alternativas de ingreso económico y capacitación técnica y de capacidades blandas de los participantes locales."
      ),
      selectInput(
        inputId = "3.4",
        label = NULL,
        choices = c(
          "1 - No se han realizado talleres.",
          "2 - Se tiene agendado talleres con participantes.",
          "3 - Se han realizado talleres con 50% de participantes identificados.",
          "4 - ",
          "5 - Se han realizado talleres con la mayoría de participantes identificados."
        ),
        "3 - Se han realizado talleres con 50% de participantes identificados.",
      ),
      br(),

      # 3.5
      h3(
        "3.5 Verificación de vértices y prospección en herramienta de manejo."
      ),
      p(
        "Realizar visitas a campo para verificar coordenadas del polígono propuesto. Durante este proceso se pueden hacer correcciones a las dimensiones considerando referencias físicas o profundidades. Además se colecta información de especies presentes, abundancia, tallas, caracterización del fondo y hábitats en el polígono."
      ),
      selectInput(
        inputId = "3.5",
        label = NULL,
        choices = c(
          "1 - No se ha realizado verificación y prospección.",
          "2 - Se ha agendado la verificación y prospección.",
          "3 - Se realizó  la verificación y prospección.",
          "4 - Se corrobora la información de campo con el diseño.",
          "5 - Los participantes secundarios dan el visto bueno al diseño."
        ),
        "3 - Se realizó  la verificación y prospección."
      ),
      br(),

      # 3.6
      h3(
        "3.6 Justificación técnica para el establecimiento de una herramienta de manejo."
      ),
      p(
        "Realizar una revisión de la literatura científica disponible y el conocimiento tradicional de los participantes locales en temas biológicos, pesqueros, oceanográficos y de salud para la elaboración del documento justificativo para la creación de una herramienta de manejo."
      ),
      selectInput(
        inputId = "3.6",
        label = NULL,
        choices = c(
          "1 - No se ha realizado el documento justificativo.",
          "2 - Se ha recopilado la información necesaria en campo y bibliográfica.",
          "3 - Se ha completado 50% del documento.",
          "4 - Se ha completado 100% del documento.",
          "5 - El documento ha sido validado por los participantes primarios con su consentimiento."
        ),
        "3 - Se ha completado 50% del documento."
      ),
      br(),

      # 3.7
      h3("3.7 Solicitud de herramienta de manejo."),
      p(
        "Petición por escrito para solicitar una herramienta de manejo. Esta deberá ser entregada a la, o las instancias correspondientes, será necesario tener un acuse de recibido. Los promoventes deberán estar al pendiente de pedir actualización del avance del tramite."
      ),
      selectInput(
        inputId = "3.7",
        label = NULL,
        choices = c(
          "1 - No se ha elaborado documento de solicitud.",
          "2 - Se ha elaborado documento de solicitud.",
          "3 - El documento de solicitud recibe visto bueno de sectores.",
          "4 - El documento de solicitud ha sido firmado.",
          "5 - Acuse de recibido de solicitud."
        ),
        "3 - El documento de solicitud recibe visto bueno de sectores.",
      ),
      br(),

      # 3.8
      h3("3.8 Seguimiento y Oficialización de herramienta de manejo."),
      p(
        "La herramienta de manejo debe ser oficializada mediante instrumentos jurídicos o acuerdos comunitarios. Este compromiso debe permanecer durante el tiempo acordado."
      ),
      selectInput(
        inputId = "3.8",
        label = NULL,
        choices = c(
          "1 - No se ha realizado ningún contacto de seguimiento.",
          "2 - Se ha solicitado actualización de proceso una sola vez.",
          "3 - Se ha solicitado  actualización de proceso mas de una vez sin recibir respuesta.",
          "4 - Se conoce el estado del proceso de tramite.",
          "5 - Se cuenta con decreto o acuerdo comunitario del establecimiento por escrito."
        ),
        "3 - Se ha solicitado  actualización de proceso mas de una vez sin recibir respuesta.",
      )
    ),
    br(),
    br(),
    br(),
    br(),

    ############################## 4 ##############################

    div(
      style = "text-align: center;",
      h2("Fase #4: Management"),
      p(
        "Se enfoca en el manejo de la herramienta de manejo durante su vigencia y documenta los cambios."
      )
    ),
    br(),

    bslib::card(
      class = "bg-primary text-white",
      # 4.1
      h3(
        "4.1 Definición de metodologías de evaluación, indicadores de medición y especies clave."
      ),
      p(
        "Se seleccionan las técnicas de monitoreo para poder realizar la colecta de datos, considerando los indicadores necesarios para medir los cambios biológicos, sociales, económicos, pesqueros, entre otros."
      ),
      selectInput(
        inputId = "4.1",
        label = NULL,
        choices = c(
          "1 - No se ha definido las técnicas de monitoreo.",
          "2 - Revisión de la literatura científica.",
          "3 - Taller para escoger o adecuar técnicas de monitoreo, e indicadores de evaluación.",
          "4 - Se establecen metodologías de monitoreo, lista de especies e indicadores.",
          "5 - Se pilotean metodologías de monitoreo e indicadores."
        ),
        "3 - Taller para escoger o adecuar técnicas de monitoreo, e indicadores de evaluación.",
      ),
      br(),

      # 4.2
      h3(
        "4.2 Capacitación de actores locales para el monitoreo biofísico y manejo de datos."
      ),
      p(
        "Se realizan certificación de buceo autónomo y en metodologías para el monitoreo biológico y oceanográfico de reservas marinas."
      ),
      selectInput(
        inputId = "4.2",
        label = NULL,
        choices = c(
          "1 - No se ha capacitado a personas.",
          "2 - Selección de personas a capacitar.",
          "3 - Personas certificadas en buceo autónomo nivel 1 (mínimo).",
          "4 - Personas capacitadas en monitoreo biofísico y manejo de datos.",
          "5 - Se crea grupo de monitoreo comunitario."
        ),
        "3 - Personas certificadas en buceo autónomo nivel 1 (mínimo).",
      ),
      br(),

      # 4.3
      h3(
        "4.3 Mujeres participan en la capacitación para monitoreo biofísico y manejo de datos."
      ),
      p(
        "Se integran mujeres en el proceso de certificación de buceo, metodologías para el monitoreo biológico,  oceanográfico de reservas marinas, así como el manejo de datos."
      ),
      selectInput(
        inputId = "4.3",
        label = NULL,
        choices = c(
          "1 - No se integro mujeres en los cursos de capacitación.",
          "2 - el 10 % de los integrantes de grupos de monitoreo son mujeres.",
          "3 - el 20 % de los integrantes de grupos de monitoreo son mujeres.",
          "4 - el 40 % de los integrantes de grupos de monitoreo son mujeres.",
          "5 - Al menos el 50 % de los integrantes de grupos de monitoreo son mujeres."
        ),
        "3 - el 20 % de los integrantes de grupos de monitoreo son mujeres.",
      ),
      br(),

      # 4.4
      h3(
        "4.4 Juventudes participan en la capacitación para monitoreo biofísico y manejo de datos."
      ),
      p(
        "Se integran juventudes en el proceso de certificación de buceo, metodologías para el monitoreo biológico,  oceanográfico de reservas marinas, así como el manejo de datos. (una juventud es una persona de 18 a 29 años de edad)."
      ),
      selectInput(
        inputId = "4.4",
        label = NULL,
        choices = c(
          "1 - No se integraron juventudes en los cursos de capacitación.",
          "2 - al menos un  integrante de grupos de monitoreo son juventudes.",
          "3 - el 20 % de los integrantes de grupos de monitoreo son juventudes.",
          "4 - el 40 % de los integrantes de grupos de monitoreo son juventudes.",
          "5 - Al menos el 50 % de los integrantes de grupos de monitoreo son juventudes."
        ),
        "3 - el 20 % de los integrantes de grupos de monitoreo son juventudes.",
      ),
      br(),

      # 4.5
      h3("4.5 Capacitación de actores locales para monitoreo complementario."),
      p(
        "Se capacita a personas para colectar información complementaria según las necesidades locales, que contribuya a la evaluación de funcionamiento (monitoreo pesquero, social, económico, etc.)"
      ),
      selectInput(
        inputId = "4.5",
        label = NULL,
        choices = c(
          "1 - No hay capacitaciones complementarias.",
          "2 - Se identifica acciones de monitoreo complementarias.",
          "3 - Se imparte el 50% de las capacitaciones complementarias.",
          "4 - Se imparte el 100% de las capacitaciones complementarias.",
          "5 - El grupo de monitoreo comunitario cubre las necesidades locales."
        ),
        "3 - Se imparte el 50% de las capacitaciones complementarias.",
      ),
      br(),

      # 4.6
      h3("4.6 Sostenibilidad financiera."),
      p(
        "Junto con la identificación de las acciones de manejo, es necesario calcular los costos de operación de cada componente, y hacer un plan de recaudación para cubrir los costos operativas durante la vigencia de la herramienta de manejo pesquero, además es necesario identificar oportunidades de capacitación y financiamiento. Una herramienta útil para hacer el costeo se puede consultar en https://innovacionazul.shinyapps.io/AppCosteo/"
      ),
      selectInput(
        inputId = "4.6",
        label = NULL,
        choices = c(
          "1 - No hay un plan de sostenibilidad financiera.",
          "2 - Se esta calculando costos operativos de cada componente.",
          "3 - Los manejadores adquieren capacitación en temas financieros.",
          "4 - Los manejadores aportan un porcentaje de los costos de operación.",
          "5 - Se esta implementando el plan de sostenibilidad financiera y los manejadores aumentan el porcentaje de aportación."
        ),
        "3 - Los manejadores adquieren capacitación en temas financieros.",
      ),
      br(),

      # 4.7
      h3(
        "4.7 Documentación y difusión de resultados de la herramienta de manejo pesquero."
      ),
      p(
        "La actividad consiste en realizar reportes técnicos y financieros para hacer notar los resultados en el periodo de vigencia. La información clave se difunde con sectores primarios y secundarios, y es utilizada para recaudación."
      ),
      selectInput(
        inputId = "4.7",
        label = NULL,
        choices = c(
          "1 - No se cuenta con información para difundir.",
          "2 - Se cuenta con información sistematizada pero no se difunde.",
          "3 - Se difunde información esporádicamente.",
          "4 - Se cuenta con una campaña de difusión y se ejecuta al 50%.",
          "5 - Se cuenta con una campaña de difusión y se ejecuta al 100%."
        ),
        "3 - Se difunde información esporádicamente.",
      )
    ),
    br(),
    br(),
    br(),
    br(),

    ############################## 5 ##############################

    div(
      style = "text-align: center;",
      h2("Fase #5: Permanence"),
      p(
        "Con los resultados obtenidos, se hace una evaluación general del funcionamiento de la herramienta de manejo y se determina su continuidad. Si es necesario, se realizan las adecuaciones para aumentar los logros."
      )
    ),
    br(),

    bslib::card(
      class = "bg-primary text-white",
      # 5.1
      h3(
        "5.1 Valoración de resultados y adaptación de manejo."
      ),
      p(
        "Con los resultados de las acciones de manejo se identifica los aciertos y las áreas de oportunidad para dar continuidad a la herramienta de manejo. Si es necesario se realizan adecuaciones a los componentes de manejo, con el fin de reducir costos de operación o aumentar los beneficios ambientales o sociales."
      ),
      selectInput(
        inputId = "5.1",
        label = NULL,
        choices = c(
          "1 - No se realizó valoración de resultados y necesidades de adaptación.",
          "2 - ",
          "3 - Se han valorado los resultados y se identifican adaptaciones.",
          "4 - Se hace un plan de adaptación a componentes de manejo.",
          "5 - Se implementan adaptaciones a componentes de manejo."
        ),
        "3 - Se han valorado los resultados y se identifican adaptaciones.",
      ),
      br(),

      # 5.2
      h3(
        "5.2 Permanencia de la herramienta de manejo."
      ),
      p(
        "Consiste en tomar la decisión de permanencia de la herramienta de manejo sin que exista modificación alguna en su forma, tamaño u objetivos considerando los resultados. También existe la opción de no continuar con la herramienta de manejo. Si llegase a considerar la modificación, de su forma, tamaño, modalidad o vigencia, deberá de evaluarse como un proceso nuevo."
      ),
      selectInput(
        inputId = "5.2",
        label = NULL,
        choices = c(
          "1 - El proceso de renovación no ha iniciado.",
          "2 - Herramienta de manejo no renovada.",
          "3 - Los documentos y soporte técnico están listos.",
          "4 - Herramienta de manejo renovada en una ocasión.",
          "5 - Herramienta de manejo renovada en mas de una ocasión."
        ),
        "3 - Los documentos y soporte técnico están listos.",
      ),
      br(),

      # 5.3
      h3(
        "5.3 Difusión del caso de éxito como solución."
      ),
      p(
        "Al final de cada periodo se debe realizar la presentación de los resultados y evaluación en la herramienta de manejo, y se hace notar que la herramienta es una solución a la problemática planteada al inicio, y que esta se puede escalar a otros sitios."
      ),
      selectInput(
        inputId = "5.3",
        label = NULL,
        choices = c(
          "1 - No se han creado y difundido los resultados.",
          "2 - Se ha creado contenido pero no se ha difundido.",
          "3 - Contenido compartido con actores primarios y secundarios locales.",
          "4 - Contenido compartido con sectores de gobierno y OSC.",
          "5 - Solución compartida con actores aledaños, regionales, nacionales o internacionales."
        ),
        "3 - Contenido compartido con actores primarios y secundarios locales.",
      )
    ),
    br(),
  )
}
####################################################################
############################## server ##############################
####################################################################
design_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Handle reactivity, validation, etc.
    observe({
      # example: print values
      print(input$feasibility_score)
      print(input$technical_score)
    })
  })
}
