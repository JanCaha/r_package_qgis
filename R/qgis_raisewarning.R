character(0)

qgis_raisewarning <- function(MESSAGE = qgisprocess::qgis_default_value(), CONDITION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:raisewarning")

  output <- qgisprocess::qgis_run_algorithm("native:raisewarning", `MESSAGE` = MESSAGE, `CONDITION` = CONDITION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}