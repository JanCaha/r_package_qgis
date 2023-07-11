character(0)

sagang_exportgridtoxyz <- function(GRIDS = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(), HEADER = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportgridtoxyz")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportgridtoxyz", `GRIDS` = GRIDS, `FILENAME` = FILENAME, `HEADER` = HEADER, `NODATA` = NODATA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportgridtoxyz", `GRIDS` = GRIDS, `FILENAME` = FILENAME, `HEADER` = HEADER, `NODATA` = NODATA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}