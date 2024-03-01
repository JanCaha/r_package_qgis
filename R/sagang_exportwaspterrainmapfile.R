##' QGIS Algorithm provided by SAGA Next Gen Export wasp terrain map file (sagang:exportwaspterrainmapfile). ---------------- Arguments ----------------  SHAPES: Contour Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ELEVATION: Map File 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FILE: File Name 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Export wasp terrain map file
##'
##' @param SHAPES `source` - Contour Lines. Path to a vector layer.
##' @param ELEVATION `field` - Map File. The name of an existing field. ; delimited list of existing field names.
##' @param FILE `file` - File Name. Path to a file.
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

sagang_exportwaspterrainmapfile <- function(SHAPES = qgisprocess:::qgis_default_value(), ELEVATION = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportwaspterrainmapfile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportwaspterrainmapfile", `SHAPES` = SHAPES, `ELEVATION` = ELEVATION, `FILE` = FILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportwaspterrainmapfile", `SHAPES` = SHAPES, `ELEVATION` = ELEVATION, `FILE` = FILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}