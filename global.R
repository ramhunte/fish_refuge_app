# reading in packages
library(shiny)
library(dplyr)
library(DT)
library(bslib)
library(bsicons)

# sourcing modules
source("modules/home_module.R")
source("modules/design_module.R")
source("modules/governance_module.R")
source("modules/biological_module.R")

# reading in data
data <- readxl::read_excel(
  "data/data.xlsx",
  sheet = "Diagnistico_Gestión y diseño",
  skip = 2
) |>
  select(1:5) |>
  distinct()
#
