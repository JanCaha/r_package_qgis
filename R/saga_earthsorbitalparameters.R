character(0)

saga_earthsorbitalparameters <- function(ORBPAR = qgisprocess::qgis_default_value(), START = qgisprocess::qgis_default_value(), STOP = qgisprocess::qgis_default_value(), STEP = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:earthsorbitalparameters")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:earthsorbitalparameters", `ORBPAR` = ORBPAR, `START` = START, `STOP` = STOP, `STEP` = STEP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:earthsorbitalparameters", `ORBPAR` = ORBPAR, `START` = START, `STOP` = STOP, `STEP` = STEP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}