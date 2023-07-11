character(0)

sagang_exportgpx <- function(SHAPES = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), ELE = qgisprocess:::qgis_default_value(), NAME = qgisprocess:::qgis_default_value(), CMT = qgisprocess:::qgis_default_value(), DESC = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportgpx")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportgpx", `SHAPES` = SHAPES, `FILE` = FILE, `ELE` = ELE, `NAME` = NAME, `CMT` = CMT, `DESC` = DESC,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportgpx", `SHAPES` = SHAPES, `FILE` = FILE, `ELE` = ELE, `NAME` = NAME, `CMT` = CMT, `DESC` = DESC,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}