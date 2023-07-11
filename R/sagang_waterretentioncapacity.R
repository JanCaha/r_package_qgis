##' QGIS Algorithm provided by SAGA Next Gen Water retention capacity (sagang:waterretentioncapacity). ---------------- Arguments ----------------  SHAPES: Plot Holes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer OUTPUT: Final Parameters 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RETENTION: Water Retention Capacity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INTERPOL: Interpolation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Multilevel B-Spline Interpolation 		- 1: (1) Inverse Distance Weighted 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SLOPECORR: Slope Correction 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Water retention capacity
##'
##' @param SHAPES `source` - Plot Holes. Path to a vector layer.
##' @param OUTPUT `vectorDestination` - Final Parameters. Path for new vector layer.
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param RETENTION `rasterDestination` - Water Retention Capacity. Path for new raster layer.
##' @param INTERPOL `enum`  of `("(0) Multilevel B-Spline Interpolation", "(1) Inverse Distance Weighted")` - Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SLOPECORR `boolean` - Slope Correction. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Final Parameters
##' * RETENTION - outputRaster - Water Retention Capacity
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_waterretentioncapacity <- function(SHAPES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), DEM = qgisprocess:::qgis_default_value(), RETENTION = qgisprocess:::qgis_default_value(), INTERPOL = qgisprocess:::qgis_default_value(), SLOPECORR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:waterretentioncapacity")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:waterretentioncapacity", `SHAPES` = SHAPES, `OUTPUT` = OUTPUT, `DEM` = DEM, `RETENTION` = RETENTION, `INTERPOL` = INTERPOL, `SLOPECORR` = SLOPECORR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:waterretentioncapacity", `SHAPES` = SHAPES, `OUTPUT` = OUTPUT, `DEM` = DEM, `RETENTION` = RETENTION, `INTERPOL` = INTERPOL, `SLOPECORR` = SLOPECORR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}