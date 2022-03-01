character(0)

qgis_uploadgpsdata <- function(INPUT = qgisprocess::qgis_default_value(), DEVICE = qgisprocess::qgis_default_value(), PORT = qgisprocess::qgis_default_value(), FEATURE_TYPE = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:uploadgpsdata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:uploadgpsdata", `INPUT` = INPUT, `DEVICE` = DEVICE, `PORT` = PORT, `FEATURE_TYPE` = FEATURE_TYPE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:uploadgpsdata", `INPUT` = INPUT, `DEVICE` = DEVICE, `PORT` = PORT, `FEATURE_TYPE` = FEATURE_TYPE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}