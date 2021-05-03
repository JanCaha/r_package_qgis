character(0)

saga_aggregate <- function(INPUT = qgisprocess::qgis_default_value(), SIZE = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:aggregate")

  output <- qgisprocess::qgis_run_algorithm("saga:aggregate", `INPUT` = INPUT, `SIZE` = SIZE, `METHOD` = METHOD,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}