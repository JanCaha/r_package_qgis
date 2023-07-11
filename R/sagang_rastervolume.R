character(0)

sagang_rastervolume <- function(GRID = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), LEVEL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rastervolume")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rastervolume", `GRID` = GRID, `METHOD` = METHOD, `LEVEL` = LEVEL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rastervolume", `GRID` = GRID, `METHOD` = METHOD, `LEVEL` = LEVEL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}