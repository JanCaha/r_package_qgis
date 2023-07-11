character(0)

sagang_exportsurfergrid <- function(GRID = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportsurfergrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportsurfergrid", `GRID` = GRID, `FILE` = FILE, `FORMAT` = FORMAT, `NODATA` = NODATA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportsurfergrid", `GRID` = GRID, `FILE` = FILE, `FORMAT` = FORMAT, `NODATA` = NODATA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}