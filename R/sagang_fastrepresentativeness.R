##' QGIS Algorithm provided by SAGA Next Gen Fast representativeness (sagang:fastrepresentativeness). ---------------- Arguments ----------------  INPUT: Input 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Output 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESULT_LOD: Output Lod 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SEEDS: Output Seeds 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LOD: Level of Generalisation 	Default value:	16 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Fast representativeness
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param RESULT `rasterDestination` - Output. Path for new raster layer.
##' @param RESULT_LOD `rasterDestination` - Output Lod. Path for new raster layer.
##' @param SEEDS `rasterDestination` - Output Seeds. Path for new raster layer.
##' @param LOD `number` - Level of Generalisation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Output
##' * RESULT_LOD - outputRaster - Output Lod
##' * SEEDS - outputRaster - Output Seeds
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_fastrepresentativeness <- function(INPUT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), RESULT_LOD = qgisprocess:::qgis_default_value(), SEEDS = qgisprocess:::qgis_default_value(), LOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fastrepresentativeness")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fastrepresentativeness", `INPUT` = INPUT, `RESULT` = RESULT, `RESULT_LOD` = RESULT_LOD, `SEEDS` = SEEDS, `LOD` = LOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fastrepresentativeness", `INPUT` = INPUT, `RESULT` = RESULT, `RESULT_LOD` = RESULT_LOD, `SEEDS` = SEEDS, `LOD` = LOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}