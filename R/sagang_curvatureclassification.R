##' QGIS Algorithm provided by SAGA Next Gen Curvature classification (sagang:curvatureclassification). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CLASSES: Curvature Classification 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STRAIGHT: Threshold Radius 	Default value:	2000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VERTICAL: Vertical Curvature 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) longitudinal curvature 		- 1: (1) profile curvature 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' HORIZONTAL: Horizontal Curvature 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) cross-sectional curvature 		- 1: (1) tangential curvature 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SMOOTH: Smoothing 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Curvature classification
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param CLASSES `rasterDestination` - Curvature Classification. Path for new raster layer.
##' @param STRAIGHT `number` - Threshold Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VERTICAL `enum`  of `("(0) longitudinal curvature", "(1) profile curvature")` - Vertical Curvature. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param HORIZONTAL `enum`  of `("(0) cross-sectional curvature", "(1) tangential curvature")` - Horizontal Curvature. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SMOOTH `number` - Smoothing. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputRaster - Curvature Classification
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_curvatureclassification <- function(DEM = qgisprocess:::qgis_default_value(), CLASSES = qgisprocess:::qgis_default_value(), STRAIGHT = qgisprocess:::qgis_default_value(), VERTICAL = qgisprocess:::qgis_default_value(), HORIZONTAL = qgisprocess:::qgis_default_value(), SMOOTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:curvatureclassification")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:curvatureclassification", `DEM` = DEM, `CLASSES` = CLASSES, `STRAIGHT` = STRAIGHT, `VERTICAL` = VERTICAL, `HORIZONTAL` = HORIZONTAL, `SMOOTH` = SMOOTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:curvatureclassification", `DEM` = DEM, `CLASSES` = CLASSES, `STRAIGHT` = STRAIGHT, `VERTICAL` = VERTICAL, `HORIZONTAL` = HORIZONTAL, `SMOOTH` = SMOOTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLASSES")
  }
}