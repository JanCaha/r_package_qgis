character(0)

sagang_countpointsinpolygons <- function(POINTS = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:countpointsinpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:countpointsinpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:countpointsinpolygons", `POINTS` = POINTS, `POLYGONS` = POLYGONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}