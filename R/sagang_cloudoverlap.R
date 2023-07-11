##' QGIS Algorithm provided by SAGA Next Gen Cloud overlap (sagang:cloudoverlap). ---------------- Arguments ----------------  COVERS: Cloud Fractions 	Argument type:	multilayer HEIGHTS: Heights 	Argument type:	multilayer GROUND: Surface Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WIND: Wind effect 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CBASE: Cloud Base 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer COVER: Total Cloud Cover 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer BLOCKS: Number of Cloud Blocks 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INTERVAL: Interval 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MINCOVER: Minimum Cloud Cover Fraction 	Default value:	0.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Cloud overlap
##'
##' @param COVERS `multilayer` - Cloud Fractions. .
##' @param HEIGHTS `multilayer` - Heights. .
##' @param GROUND `raster` - Surface Elevation. Path to a raster layer.
##' @param WIND `raster` - Wind effect. Path to a raster layer.
##' @param CBASE `raster` - Cloud Base. Path to a raster layer.
##' @param COVER `rasterDestination` - Total Cloud Cover. Path for new raster layer.
##' @param BLOCKS `rasterDestination` - Number of Cloud Blocks. Path for new raster layer.
##' @param INTERVAL `number` - Interval. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MINCOVER `number` - Minimum Cloud Cover Fraction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BLOCKS - outputRaster - Number of Cloud Blocks
##' * COVER - outputRaster - Total Cloud Cover
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_cloudoverlap <- function(COVERS = qgisprocess:::qgis_default_value(), HEIGHTS = qgisprocess:::qgis_default_value(), GROUND = qgisprocess:::qgis_default_value(), WIND = qgisprocess:::qgis_default_value(), CBASE = qgisprocess:::qgis_default_value(), COVER = qgisprocess:::qgis_default_value(), BLOCKS = qgisprocess:::qgis_default_value(), INTERVAL = qgisprocess:::qgis_default_value(), MINCOVER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:cloudoverlap")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:cloudoverlap", `COVERS` = COVERS, `HEIGHTS` = HEIGHTS, `GROUND` = GROUND, `WIND` = WIND, `CBASE` = CBASE, `COVER` = COVER, `BLOCKS` = BLOCKS, `INTERVAL` = INTERVAL, `MINCOVER` = MINCOVER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:cloudoverlap", `COVERS` = COVERS, `HEIGHTS` = HEIGHTS, `GROUND` = GROUND, `WIND` = WIND, `CBASE` = CBASE, `COVER` = COVER, `BLOCKS` = BLOCKS, `INTERVAL` = INTERVAL, `MINCOVER` = MINCOVER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BLOCKS")
  }
}