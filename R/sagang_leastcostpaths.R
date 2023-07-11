##' QGIS Algorithm provided by SAGA Next Gen Least cost paths (sagang:leastcostpaths). ---------------- Arguments ----------------  SOURCE: Source Point(s) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer DEM: Accumulated Cost Surface 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VALUES: Values (optional) 	Argument type:	multilayer POINTS: Profile Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LINE: Profile Lines 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Least cost paths
##'
##' @param SOURCE `source` - Source Point(s). Path to a vector layer.
##' @param DEM `raster` - Accumulated Cost Surface. Path to a raster layer.
##' @param VALUES `multilayer` - Values. .
##' @param POINTS `vectorDestination` - Profile Points. Path for new vector layer.
##' @param LINE `vectorDestination` - Profile Lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LINE - outputVector - Profile Lines
##' * POINTS - outputVector - Profile Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_leastcostpaths <- function(SOURCE = qgisprocess:::qgis_default_value(), DEM = qgisprocess:::qgis_default_value(), VALUES = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), LINE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:leastcostpaths")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:leastcostpaths", `SOURCE` = SOURCE, `DEM` = DEM, `VALUES` = VALUES, `POINTS` = POINTS, `LINE` = LINE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:leastcostpaths", `SOURCE` = SOURCE, `DEM` = DEM, `VALUES` = VALUES, `POINTS` = POINTS, `LINE` = LINE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LINE")
  }
}