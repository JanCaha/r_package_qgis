##' QGIS Algorithm provided by QGIS (native c++) Convert GLTF to vector features (native:gltftovector). Converts GLTF content to standard vector layer formats.
##'
##' @title QGIS algorithm - Convert GLTF to vector features
##'
##' @param INPUT `file` - Input GLTF. Path to a file.
##' @param OUTPUT_POLYGONS `sink` - Output polygons. Path for new vector layer.
##' @param OUTPUT_LINES `sink` - Output lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_LINES - outputVector - Output lines
##' * OUTPUT_POLYGONS - outputVector - Output polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_gltftovector <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT_POLYGONS = qgisprocess:::qgis_default_value(), OUTPUT_LINES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:gltftovector")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:gltftovector", `INPUT` = INPUT, `OUTPUT_POLYGONS` = OUTPUT_POLYGONS, `OUTPUT_LINES` = OUTPUT_LINES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:gltftovector", `INPUT` = INPUT, `OUTPUT_POLYGONS` = OUTPUT_POLYGONS, `OUTPUT_LINES` = OUTPUT_LINES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT_LINES")
  }
}