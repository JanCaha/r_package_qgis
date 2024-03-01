##' QGIS Algorithm provided by SAGA Next Gen Export atlas boundary file (sagang:exportatlasboundaryfile). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer PNAME: Primary Name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names SNAME: Secondary Name 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Export atlas boundary file
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param PNAME `field` - Primary Name. The name of an existing field. ; delimited list of existing field names.
##' @param SNAME `field` - Secondary Name. The name of an existing field. ; delimited list of existing field names.
##' @param FILE `file` - File. Path to a file.
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