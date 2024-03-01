##' QGIS Algorithm provided by SAGA Next Gen Export gpx (sagang:exportgpx). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file ELE: Elevation 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names NAME: Name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names CMT: Comment 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names DESC: Description 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names
##'
##' @title QGIS algorithm - Export gpx
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param FILE `file` - File. Path to a file.
##' @param ELE `field` - Elevation. The name of an existing field. ; delimited list of existing field names.
##' @param NAME `field` - Name. The name of an existing field. ; delimited list of existing field names.
##' @param CMT `field` - Comment. The name of an existing field. ; delimited list of existing field names.
##' @param DESC `field` - Description. The name of an existing field. ; delimited list of existing field names.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

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