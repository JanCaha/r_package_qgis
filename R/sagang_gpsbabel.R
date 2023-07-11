character(0)

sagang_gpsbabel <- function(BASEPATH = qgisprocess:::qgis_default_value(), INPUT = qgisprocess:::qgis_default_value(), FORMATIN = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), FORMATOUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gpsbabel")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gpsbabel", `BASEPATH` = BASEPATH, `INPUT` = INPUT, `FORMATIN` = FORMATIN, `OUTPUT` = OUTPUT, `FORMATOUT` = FORMATOUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gpsbabel", `BASEPATH` = BASEPATH, `INPUT` = INPUT, `FORMATIN` = FORMATIN, `OUTPUT` = OUTPUT, `FORMATOUT` = FORMATOUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}