character(0)

qgis_postgisexecutesql <- function(DATABASE = qgisprocess::qgis_default_value(), SQL = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:postgisexecutesql")

  output <- qgisprocess::qgis_run_algorithm("native:postgisexecutesql", `DATABASE` = DATABASE, `SQL` = SQL,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}