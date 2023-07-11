character(0)

sagang_exportesriarcinfogrid <- function(GRID = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(), GEOREF = qgisprocess:::qgis_default_value(), PREC = qgisprocess:::qgis_default_value(), DECSEP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportesriarcinfogrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportesriarcinfogrid", `GRID` = GRID, `FILE` = FILE, `FORMAT` = FORMAT, `GEOREF` = GEOREF, `PREC` = PREC, `DECSEP` = DECSEP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportesriarcinfogrid", `GRID` = GRID, `FILE` = FILE, `FORMAT` = FORMAT, `GEOREF` = GEOREF, `PREC` = PREC, `DECSEP` = DECSEP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}