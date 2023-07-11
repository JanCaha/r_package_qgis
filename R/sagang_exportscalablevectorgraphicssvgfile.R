character(0)

sagang_exportscalablevectorgraphicssvgfile <- function(OUTPUT = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), LAYER = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportscalablevectorgraphicssvgfile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportscalablevectorgraphicssvgfile", `OUTPUT` = OUTPUT, `LAYERS` = LAYERS, `LAYER` = LAYER, `FIELD` = FIELD, `FILE` = FILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportscalablevectorgraphicssvgfile", `OUTPUT` = OUTPUT, `LAYERS` = LAYERS, `LAYER` = LAYER, `FIELD` = FIELD, `FILE` = FILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}