character(0)

qgis_spatialiteexecutesql <- function(DATABASE = qgisprocess::qgis_default_value(), SQL = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:spatialiteexecutesql",`DATABASE` = DATABASE, `SQL` = SQL,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
}
}