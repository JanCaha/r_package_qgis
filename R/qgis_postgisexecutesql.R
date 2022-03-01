character(0)

qgis_postgisexecutesql <- function(DATABASE = qgisprocess::qgis_default_value(), SQL = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:postgisexecutesql")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:postgisexecutesql", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:postgisexecutesql", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}