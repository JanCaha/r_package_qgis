character(0)

sagang_exportatlasboundaryfile <- function(SHAPES = qgisprocess:::qgis_default_value(), PNAME = qgisprocess:::qgis_default_value(), SNAME = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportatlasboundaryfile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportatlasboundaryfile", `SHAPES` = SHAPES, `PNAME` = PNAME, `SNAME` = SNAME, `FILE` = FILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportatlasboundaryfile", `SHAPES` = SHAPES, `PNAME` = PNAME, `SNAME` = SNAME, `FILE` = FILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}