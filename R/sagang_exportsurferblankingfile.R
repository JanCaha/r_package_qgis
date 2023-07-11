character(0)

sagang_exportsurferblankingfile <- function(SHAPES = qgisprocess:::qgis_default_value(), NAME = qgisprocess:::qgis_default_value(), DESC = qgisprocess:::qgis_default_value(), ZVAL = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportsurferblankingfile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportsurferblankingfile", `SHAPES` = SHAPES, `NAME` = NAME, `DESC` = DESC, `ZVAL` = ZVAL, `FILE` = FILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportsurferblankingfile", `SHAPES` = SHAPES, `NAME` = NAME, `DESC` = DESC, `ZVAL` = ZVAL, `FILE` = FILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}