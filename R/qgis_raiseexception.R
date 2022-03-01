character(0)

qgis_raiseexception <- function(MESSAGE = qgisprocess::qgis_default_value(), CONDITION = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:raiseexception")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:raiseexception", `MESSAGE` = MESSAGE, `CONDITION` = CONDITION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:raiseexception", `MESSAGE` = MESSAGE, `CONDITION` = CONDITION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}