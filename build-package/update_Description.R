library(desc)
library(glue)
library(qgisprocess)

files_changed_from_last_run <- readr::read_rds(here::here("data-raw", "changed_files.rds"))

qgis_version <- qgisprocess::qgis_version()

qgis_version_numeric <- stringr::str_extract(qgis_version, "[0-9]+\\.[0-9]+\\.[0-9]+")

description <- glue::glue("An extension of package `qgisprocess` providing direct R functions for QGIS functions. Compiled against QGIS version: {qgis_version}.")
desc_file <- desc::desc()
desc_file$set("Description", description)

current_version <- desc_file$get("Version")

dev_version <- stringr::str_extract(current_version, "[0-9]+$")

if (stringr::str_detect(current_version, qgis_version_numeric)){
  desc_file$bump_version("dev")
} else {
  version_number <- glue::glue("{qgis_version_numeric}.{dev_version}")
  desc_file$set("Version", qgis_version_numeric)
  desc_file$bump_version("dev")
}

desc_file$write()
