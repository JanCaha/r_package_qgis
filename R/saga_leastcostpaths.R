##' QGIS Algorithm provided by SAGA Least cost paths (saga:leastcostpaths)
##'
##' @title QGIS algorithm Least cost paths
##'
##' @param SOURCE `source` - Source Point(s). Path to a vector layer.
##' @param DEM `raster` - Accumulated cost. Path to a raster layer.
##' @param VALUES `multilayer` - Values. .
##' @param POINTS `vectorDestination` - Profile (points). Path for new vector layer.
##' @param LINE `vectorDestination` - Profile (lines). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LINE - outputVector - Profile (lines)
##' * POINTS - outputVector - Profile (points)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_leastcostpaths <- function(SOURCE = qgisprocess:::qgis_default_value(), DEM = qgisprocess:::qgis_default_value(), VALUES = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), LINE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:leastcostpaths")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:leastcostpaths", `SOURCE` = SOURCE, `DEM` = DEM, `VALUES` = VALUES, `POINTS` = POINTS, `LINE` = LINE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:leastcostpaths", `SOURCE` = SOURCE, `DEM` = DEM, `VALUES` = VALUES, `POINTS` = POINTS, `LINE` = LINE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LINE")
  }
}