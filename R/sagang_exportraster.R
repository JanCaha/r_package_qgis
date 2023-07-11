character(0)

sagang_exportraster <- function(GRIDS = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), SET_NODATA = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportraster", `GRIDS` = GRIDS, `FILE` = FILE, `FORMAT` = FORMAT, `TYPE` = TYPE, `SET_NODATA` = SET_NODATA, `NODATA` = NODATA, `OPTIONS` = OPTIONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportraster", `GRIDS` = GRIDS, `FILE` = FILE, `FORMAT` = FORMAT, `TYPE` = TYPE, `SET_NODATA` = SET_NODATA, `NODATA` = NODATA, `OPTIONS` = OPTIONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}