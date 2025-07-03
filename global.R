# reading in packages
library(shiny)
library(dplyr)
library(DT)
library(bslib)
library(bsicons)
library(janitor)
library(markdown)
library(rmarkdown)

source("R/utils.R")
source("R/header.R")
# sourcing modules
source("modules/home_module.R")
source("modules/design_module.R")
source("modules/governance_module.R")
source("modules/biological_module.R")
source("modules/summary_module.R")

# data frames
des_tmp <- setNames(
  read.csv("data/design.csv"),
  sub("^X", "", names(read.csv("data/design.csv")))
)


gov_tmp <- setNames(
  read.csv("data/governance.csv"),
  sub("^X", "", names(read.csv("data/governance.csv")))
)

bio_tmp <- setNames(
  read.csv("data/biological.csv"),
  sub("^X", "", names(read.csv("data/biological.csv")))
)

# reading in data
data <- readxl::read_excel(
  "data/data.xlsx",
  sheet = "Diagnistico_Gestión y diseño",
  skip = 2
) |>
  select(1:5) |>
  distinct()
#
