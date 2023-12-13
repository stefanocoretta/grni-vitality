# This script should be sourced at the beginning of each .qmd file.

cli::cli_h1("Attaching all packages")
cli::cli_text()

library(tidyverse)
theme_set(theme_light())
library(ggmosaic)
library(tidygeocoder)
library(sf)
library(rnaturalearth)
library(HH)
