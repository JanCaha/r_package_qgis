##' QGIS Algorithm provided by SAGA Topographic openness (saga:topographicopenness)
##'
##' @title QGIS algorithm Topographic openness
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param POS `rasterDestination` - Positive Openness. Path for new raster layer.
##' @param NEG `rasterDestination` - Negative Openness. Path for new raster layer.
##' @param RADIUS `number` - Radial Limit. A numeric value.
##' @param METHOD `enum`  of `("[0] multi scale", "[1] sectors")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DLEVEL `number` - Multi Scale Factor. A numeric value.
##' @param NDIRS `number` - Number of Sectors. A numeric value.
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

saga_topographicopenness <- function(DEM = qgisprocess:::qgis_default_value(), POS = qgisprocess:::qgis_default_value(), NEG = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), DLEVEL = qgisprocess:::qgis_default_value(), NDIRS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:topographicopenness")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:topographicopenness", `DEM` = DEM, `POS` = POS, `NEG` = NEG, `RADIUS` = RADIUS, `METHOD` = METHOD, `DLEVEL` = DLEVEL, `NDIRS` = NDIRS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:topographicopenness", `DEM` = DEM, `POS` = POS, `NEG` = NEG, `RADIUS` = RADIUS, `METHOD` = METHOD, `DLEVEL` = DLEVEL, `NDIRS` = NDIRS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NEG")
  }
}