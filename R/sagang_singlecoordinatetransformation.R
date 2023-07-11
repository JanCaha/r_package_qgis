character(0)

sagang_singlecoordinatetransformation <- function(SOURCE_CRS = qgisprocess:::qgis_default_value(), SOURCE_X = qgisprocess:::qgis_default_value(), SOURCE_Y = qgisprocess:::qgis_default_value(), TARGET_CRS = qgisprocess:::qgis_default_value(), TARGET_X = qgisprocess:::qgis_default_value(), TARGET_Y = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:singlecoordinatetransformation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:singlecoordinatetransformation", `SOURCE_CRS` = SOURCE_CRS, `SOURCE_X` = SOURCE_X, `SOURCE_Y` = SOURCE_Y, `TARGET_CRS` = TARGET_CRS, `TARGET_X` = TARGET_X, `TARGET_Y` = TARGET_Y,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:singlecoordinatetransformation", `SOURCE_CRS` = SOURCE_CRS, `SOURCE_X` = SOURCE_X, `SOURCE_Y` = SOURCE_Y, `TARGET_CRS` = TARGET_CRS, `TARGET_X` = TARGET_X, `TARGET_Y` = TARGET_Y,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}