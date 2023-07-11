##' QGIS Algorithm provided by SAGA Next Gen Visibility (points) (sagang:visibilitypoints). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VISIBILITY: Visibility 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD_HEIGHT: Height 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names METHOD: Unit 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Visibility 		- 1: (1) Shade 		- 2: (2) Distance 		- 3: (3) Size 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Visibility (points)
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param VISIBILITY `rasterDestination` - Visibility. Path for new raster layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD_HEIGHT `field` - Height. The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("(0) Visibility", "(1) Shade", "(2) Distance", "(3) Size")` - Unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * VISIBILITY - outputRaster - Visibility
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_visibilitypoints <- function(ELEVATION = qgisprocess:::qgis_default_value(), VISIBILITY = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), FIELD_HEIGHT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:visibilitypoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:visibilitypoints", `ELEVATION` = ELEVATION, `VISIBILITY` = VISIBILITY, `POINTS` = POINTS, `FIELD_HEIGHT` = FIELD_HEIGHT, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:visibilitypoints", `ELEVATION` = ELEVATION, `VISIBILITY` = VISIBILITY, `POINTS` = POINTS, `FIELD_HEIGHT` = FIELD_HEIGHT, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "VISIBILITY")
  }
}