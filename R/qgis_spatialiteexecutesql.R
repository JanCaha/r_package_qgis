character(0)

qgis_spatialiteexecutesql <- function(DATABASE = qgisprocess:::qgis_default_value(), SQL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:spatialiteexecutesql")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:spatialiteexecutesql", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:spatialiteexecutesql", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}