character(0)

qgis_raiseexception <- function(MESSAGE = qgisprocess::qgis_default_value(), CONDITION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:raiseexception")

  output <- qgisprocess::qgis_run_algorithm("native:raiseexception", `MESSAGE` = MESSAGE, `CONDITION` = CONDITION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}