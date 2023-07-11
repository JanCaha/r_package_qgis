##' QGIS Algorithm provided by SAGA Next Gen Topographic openness (sagang:topographicopenness). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer POS: Positive Openness 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer NEG: Negative Openness 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RADIUS: Radial Limit 	Default value:	10000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) multi scale 		- 1: (1) line tracing 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DLEVEL: Multi Scale Factor 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NDIRS: Number of Sectors 	Default value:	8 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression UNIT: Unit 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Radians 		- 1: (1) Degree 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NADIR: Difference from Nadir 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Topographic openness
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param POS `rasterDestination` - Positive Openness. Path for new raster layer.
##' @param NEG `rasterDestination` - Negative Openness. Path for new raster layer.
##' @param RADIUS `number` - Radial Limit. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) multi scale", "(1) line tracing")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DLEVEL `number` - Multi Scale Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NDIRS `number` - Number of Sectors. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param UNIT `enum`  of `("(0) Radians", "(1) Degree")` - Unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NADIR `boolean` - Difference from Nadir. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * NEG - outputRaster - Negative Openness
##' * POS - outputRaster - Positive Openness
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_topographicopenness <- function(DEM = qgisprocess:::qgis_default_value(), POS = qgisprocess:::qgis_default_value(), NEG = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), DLEVEL = qgisprocess:::qgis_default_value(), NDIRS = qgisprocess:::qgis_default_value(), UNIT = qgisprocess:::qgis_default_value(), NADIR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:topographicopenness")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:topographicopenness", `DEM` = DEM, `POS` = POS, `NEG` = NEG, `RADIUS` = RADIUS, `METHOD` = METHOD, `DLEVEL` = DLEVEL, `NDIRS` = NDIRS, `UNIT` = UNIT, `NADIR` = NADIR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:topographicopenness", `DEM` = DEM, `POS` = POS, `NEG` = NEG, `RADIUS` = RADIUS, `METHOD` = METHOD, `DLEVEL` = DLEVEL, `NDIRS` = NDIRS, `UNIT` = UNIT, `NADIR` = NADIR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NEG")
  }
}