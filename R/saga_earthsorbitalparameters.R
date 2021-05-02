character(0)

saga_earthsorbitalparameters <- function(ORBPAR = qgisprocess::qgis_default_value(), START = qgisprocess::qgis_default_value(), STOP = qgisprocess::qgis_default_value(), STEP = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:earthsorbitalparameters")
  output <- qgisprocess::qgis_run_algorithm("saga:earthsorbitalparameters",`ORBPAR` = ORBPAR, `START` = START, `STOP` = STOP, `STEP` = STEP,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}