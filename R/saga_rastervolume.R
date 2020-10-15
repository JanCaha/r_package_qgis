character(0)

saga_rastervolume <- function(GRID = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), LEVEL = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:rastervolume",`GRID` = GRID, `METHOD` = METHOD, `LEVEL` = LEVEL,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
}
}