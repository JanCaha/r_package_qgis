##' QGIS Algorithm provided by SAGA Sky view factor (saga:skyviewfactor)
##'
##' @title QGIS algorithm Sky view factor
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param RADIUS `number` - Maximum Search Radius. A numeric value.
##' @param METHOD `enum`  of `("[0] multi scale", "[1] sectors")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DLEVEL `number` - Multi Scale Factor. A numeric value.
##' @param NDIRS `number` - Number of Sectors. A numeric value.
##' @param VISIBLE `rasterDestination` - Visible Sky. Path for new raster layer.
##' @param SVF `rasterDestination` - Sky View Factor. Path for new raster layer.
##' @param SIMPLE `rasterDestination` - Sky View Factor (Simplified). Path for new raster layer.
##' @param TERRAIN `rasterDestination` - Terrain View Factor. Path for new raster layer.
##' @param DISTANCE `rasterDestination` - Terrain View Factor. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCE - outputRaster - Terrain View Factor
##' * SIMPLE - outputRaster - Sky View Factor (Simplified)
##' * SVF - outputRaster - Sky View Factor
##' * TERRAIN - outputRaster - Terrain View Factor
##' * VISIBLE - outputRaster - Visible Sky
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_skyviewfactor <- function(DEM = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), DLEVEL = qgisprocess:::qgis_default_value(), NDIRS = qgisprocess:::qgis_default_value(), VISIBLE = qgisprocess:::qgis_default_value(), SVF = qgisprocess:::qgis_default_value(), SIMPLE = qgisprocess:::qgis_default_value(), TERRAIN = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:skyviewfactor")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:skyviewfactor", `DEM` = DEM, `RADIUS` = RADIUS, `METHOD` = METHOD, `DLEVEL` = DLEVEL, `NDIRS` = NDIRS, `VISIBLE` = VISIBLE, `SVF` = SVF, `SIMPLE` = SIMPLE, `TERRAIN` = TERRAIN, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:skyviewfactor", `DEM` = DEM, `RADIUS` = RADIUS, `METHOD` = METHOD, `DLEVEL` = DLEVEL, `NDIRS` = NDIRS, `VISIBLE` = VISIBLE, `SVF` = SVF, `SIMPLE` = SIMPLE, `TERRAIN` = TERRAIN, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DISTANCE")
  }
}