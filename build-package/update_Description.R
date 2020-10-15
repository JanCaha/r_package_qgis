library(desc)
library(glue)
library(desc)
library(qgisprocess)

qgis_version <- qgisprocess::qgis_version()

description <- glue::glue("An extension of package `qgisprocess` providing direct R functions for QGIS functions. Compiled against QGIS version: {qgis_version}.")
desc_file <- desc::desc()
desc_file$set("Description", description)
desc_file$bump_version("minor")
desc_file$write()
