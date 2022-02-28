character(0)

qgis_filter <- function(INPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:filter")

  output <- qgisprocess::qgis_run_algorithm("native:filter", `INPUT` = INPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}