##' QGIS Algorithm provided by SAGA Next Gen Sky view factor (sagang:skyviewfactor). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VISIBLE: Visible Sky 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SVF: Sky View Factor 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SIMPLE: Sky View Factor (Simplified) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TERRAIN: Terrain View Factor 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DISTANCE: Average View Distance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RADIUS: Maximum Search Radius 	Default value:	10000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NDIRS: Number of Sectors 	Default value:	8 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) cell size 		- 1: (1) multi scale 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DLEVEL: Multi Scale Factor 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Sky view factor
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param VISIBLE `rasterDestination` - Visible Sky. Path for new raster layer.
##' @param SVF `rasterDestination` - Sky View Factor. Path for new raster layer.
##' @param SIMPLE `rasterDestination` - Sky View Factor (Simplified). Path for new raster layer.
##' @param TERRAIN `rasterDestination` - Terrain View Factor. Path for new raster layer.
##' @param DISTANCE `rasterDestination` - Average View Distance. Path for new raster layer.
##' @param RADIUS `number` - Maximum Search Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NDIRS `number` - Number of Sectors. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) cell size", "(1) multi scale")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DLEVEL `number` - Multi Scale Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCE - outputRaster - Average View Distance
##' * SIMPLE - outputRaster - Sky View Factor (Simplified)
##' * SVF - outputRaster - Sky View Factor
##' * TERRAIN - outputRaster - Terrain View Factor
##' * VISIBLE - outputRaster - Visible Sky
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_skyviewfactor <- function(DEM = qgisprocess:::qgis_default_value(), VISIBLE = qgisprocess:::qgis_default_value(), SVF = qgisprocess:::qgis_default_value(), SIMPLE = qgisprocess:::qgis_default_value(), TERRAIN = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), NDIRS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), DLEVEL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:skyviewfactor")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:skyviewfactor", `DEM` = DEM, `VISIBLE` = VISIBLE, `SVF` = SVF, `SIMPLE` = SIMPLE, `TERRAIN` = TERRAIN, `DISTANCE` = DISTANCE, `RADIUS` = RADIUS, `NDIRS` = NDIRS, `METHOD` = METHOD, `DLEVEL` = DLEVEL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:skyviewfactor", `DEM` = DEM, `VISIBLE` = VISIBLE, `SVF` = SVF, `SIMPLE` = SIMPLE, `TERRAIN` = TERRAIN, `DISTANCE` = DISTANCE, `RADIUS` = RADIUS, `NDIRS` = NDIRS, `METHOD` = METHOD, `DLEVEL` = DLEVEL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DISTANCE")
  }
}