##' QGIS Algorithm provided by QGIS (native c++) Random points in polygons (native:randompointsinpolygons)
##'
##' @title QGIS algorithm Random points in polygons
##'
##' @param INPUT `source` - Input polygon layer. Path to a vector layer.
##' @param POINTS_NUMBER `number` - Number of points for each feature. A numeric value.
##' @param MIN_DISTANCE `distance` - Minimum distance between points. A numeric value.
##' @param MIN_DISTANCE_GLOBAL `distance` - Global minimum distance between points. A numeric value.
##' @param MAX_TRIES_PER_POINT `number` - Maximum number of search attempts (for Min. dist.  0). A numeric value.
##' @param SEED `number` - Random seed. A numeric value.
##' @param INCLUDE_POLYGON_ATTRIBUTES `boolean` - Include polygon attributes. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Random points in polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FEATURES_WITH_EMPTY_OR_NO_GEOMETRY - outputNumber - Number of features with empty or no geometry
##' * OUTPUT - outputVector - Random points in polygons
##' * OUTPUT_POINTS - outputNumber - Total number of points generated
##' * POINTS_MISSED - outputNumber - Number of missed points
##' * POLYGONS_WITH_MISSED_POINTS - outputNumber - Number of polygons with missed points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_randompointsinpolygons <- function(INPUT = qgisprocess::qgis_default_value(), POINTS_NUMBER = qgisprocess::qgis_default_value(), MIN_DISTANCE = qgisprocess::qgis_default_value(), MIN_DISTANCE_GLOBAL = qgisprocess::qgis_default_value(), MAX_TRIES_PER_POINT = qgisprocess::qgis_default_value(), SEED = qgisprocess::qgis_default_value(), INCLUDE_POLYGON_ATTRIBUTES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:randompointsinpolygons")

  output <- qgisprocess::qgis_run_algorithm("native:randompointsinpolygons", `INPUT` = INPUT, `POINTS_NUMBER` = POINTS_NUMBER, `MIN_DISTANCE` = MIN_DISTANCE, `MIN_DISTANCE_GLOBAL` = MIN_DISTANCE_GLOBAL, `MAX_TRIES_PER_POINT` = MAX_TRIES_PER_POINT, `SEED` = SEED, `INCLUDE_POLYGON_ATTRIBUTES` = INCLUDE_POLYGON_ATTRIBUTES, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FEATURES_WITH_EMPTY_OR_NO_GEOMETRY")
  }
}