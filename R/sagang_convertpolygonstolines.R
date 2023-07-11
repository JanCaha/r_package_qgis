##' QGIS Algorithm provided by SAGA Next Gen Convert polygons to lines (sagang:convertpolygonstolines). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer LINES: Lines 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Convert polygons to lines
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param LINES `vectorDestination` - Lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LINES - outputVector - Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_convertpolygonstolines <- function(POLYGONS = qgisprocess:::qgis_default_value(), LINES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:convertpolygonstolines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:convertpolygonstolines", `POLYGONS` = POLYGONS, `LINES` = LINES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:convertpolygonstolines", `POLYGONS` = POLYGONS, `LINES` = LINES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LINES")
  }
}