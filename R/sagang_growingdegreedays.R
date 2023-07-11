##' QGIS Algorithm provided by SAGA Next Gen Growing degree days (sagang:growingdegreedays). ---------------- Arguments ----------------  TMEAN: Mean Monthly Temperatures 	Argument type:	multilayer TBASE: Base Temperature 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NGDD: Number of Days above Base Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TSUM: Growing Degree Days 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FIRST: First Growing Degree Day 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LAST: Last Growing Degree Day 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TARGET: Degree Sum Target Day 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TTARGET: Degree Sum 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Growing degree days
##'
##' @param TMEAN `multilayer` - Mean Monthly Temperatures. .
##' @param TBASE `number` - Base Temperature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NGDD `rasterDestination` - Number of Days above Base Temperature. Path for new raster layer.
##' @param TSUM `rasterDestination` - Growing Degree Days. Path for new raster layer.
##' @param FIRST `rasterDestination` - First Growing Degree Day. Path for new raster layer.
##' @param LAST `rasterDestination` - Last Growing Degree Day. Path for new raster layer.
##' @param TARGET `rasterDestination` - Degree Sum Target Day. Path for new raster layer.
##' @param TTARGET `number` - Degree Sum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FIRST - outputRaster - First Growing Degree Day
##' * LAST - outputRaster - Last Growing Degree Day
##' * NGDD - outputRaster - Number of Days above Base Temperature
##' * TARGET - outputRaster - Degree Sum Target Day
##' * TSUM - outputRaster - Growing Degree Days
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_growingdegreedays <- function(TMEAN = qgisprocess:::qgis_default_value(), TBASE = qgisprocess:::qgis_default_value(), NGDD = qgisprocess:::qgis_default_value(), TSUM = qgisprocess:::qgis_default_value(), FIRST = qgisprocess:::qgis_default_value(), LAST = qgisprocess:::qgis_default_value(), TARGET = qgisprocess:::qgis_default_value(), TTARGET = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:growingdegreedays")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:growingdegreedays", `TMEAN` = TMEAN, `TBASE` = TBASE, `NGDD` = NGDD, `TSUM` = TSUM, `FIRST` = FIRST, `LAST` = LAST, `TARGET` = TARGET, `TTARGET` = TTARGET,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:growingdegreedays", `TMEAN` = TMEAN, `TBASE` = TBASE, `NGDD` = NGDD, `TSUM` = TSUM, `FIRST` = FIRST, `LAST` = LAST, `TARGET` = TARGET, `TTARGET` = TTARGET,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FIRST")
  }
}