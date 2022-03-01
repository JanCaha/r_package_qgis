character(0)

qgis_spatialiteexecutesqlregistered <- function(DATABASE = qgisprocess::qgis_default_value(), SQL = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:spatialiteexecutesqlregistered")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:spatialiteexecutesqlregistered", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:spatialiteexecutesqlregistered", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}