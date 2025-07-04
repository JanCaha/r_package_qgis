##' QGIS Algorithm provided by QGIS (native c++) Random points in polygons (native:randompointsinpolygons). Creates a layer with a number of points placed randomly in each polygon of a given layer. pThis algorithm creates a point layer, with points placed randomly in the polygons of the ibInput polygon layer/b/i./p ulliFor each feature in the ibInput polygon layer/b/i, the algorithm attempts to add the specified ibNumber of points for each feature/b/i to the output layer./li liA ibMinimum distance between points/b/i and a ibGlobal minimum distance between points/b/i can be specified.br A point will not be added if there is an already generated point within this (Euclidean) distance from the generated location. With iMinimum distance between points/i, only points in the same polygon feature are considered, while for iGlobal minimum distance between points/i all previously generated points are considered. If the iGlobal minimum distance between points/i is set equal to or larger than the (local) iMinimum distance between points/i, the latter has no effect.br If the iMinimum distance between points/i is too large, it may not be possible to generate the specified iNumber of points for each feature/i, but all the generated points are returned./li liThe ibMaximum number of attempts per point/b/i can be specified./li liThe seed for the random generator can be provided (biRandom seed/i/b - integer, greater than 0)./li liThe user can choose not to ibInclude polygon feature attributes/b/i in the attributes of the generated point features./li /ul The total number of points will bebr b'number of input features'/b * ibNumber of points for each feature/b/ibr if there are no misses. The iNumber of points for each feature/i, iMinimum distance between points/i and iMaximum number of attempts per point/i can be data defined. pOutput from the algorithm:/p ul li The number of features with an empty or no geometry (codeFEATURES_WITH_EMPTY_OR_NO_GEOMETRY/code)./li li A point layer containing the random points (codeOUTPUT/code)./li li The number of generated features (codeOUTPUT_POINTS/code)./li li The number of missed points (codePOINTS_MISSED/code)./li li The number of features with non-empty geometry and missing points (codePOLYGONS_WITH_MISSED_POINTS/code)./li /ul
##'
##' @title QGIS algorithm - Random points in polygons
##'
##' @param INPUT `source` - Input polygon layer. Path to a vector layer.
##' @param POINTS_NUMBER `number` - Number of points for each feature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIN_DISTANCE `distance` - Minimum distance between points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIN_DISTANCE_GLOBAL `distance` - Global minimum distance between points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_TRIES_PER_POINT `number` - Maximum number of search attempts (for Min. dist.  0). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEED `number` - Random seed. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INCLUDE_POLYGON_ATTRIBUTES `boolean` - Include polygon attributes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Random points in polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
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
##' @importFrom qgisprocess qgis_run_algorithm

qgis_randompointsinpolygons <- function(INPUT = qgisprocess:::qgis_default_value(), POINTS_NUMBER = qgisprocess:::qgis_default_value(), MIN_DISTANCE = qgisprocess:::qgis_default_value(), MIN_DISTANCE_GLOBAL = qgisprocess:::qgis_default_value(), MAX_TRIES_PER_POINT = qgisprocess:::qgis_default_value(), SEED = qgisprocess:::qgis_default_value(), INCLUDE_POLYGON_ATTRIBUTES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:randompointsinpolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:randompointsinpolygons", `INPUT` = INPUT, `POINTS_NUMBER` = POINTS_NUMBER, `MIN_DISTANCE` = MIN_DISTANCE, `MIN_DISTANCE_GLOBAL` = MIN_DISTANCE_GLOBAL, `MAX_TRIES_PER_POINT` = MAX_TRIES_PER_POINT, `SEED` = SEED, `INCLUDE_POLYGON_ATTRIBUTES` = INCLUDE_POLYGON_ATTRIBUTES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:randompointsinpolygons", `INPUT` = INPUT, `POINTS_NUMBER` = POINTS_NUMBER, `MIN_DISTANCE` = MIN_DISTANCE, `MIN_DISTANCE_GLOBAL` = MIN_DISTANCE_GLOBAL, `MAX_TRIES_PER_POINT` = MAX_TRIES_PER_POINT, `SEED` = SEED, `INCLUDE_POLYGON_ATTRIBUTES` = INCLUDE_POLYGON_ATTRIBUTES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FEATURES_WITH_EMPTY_OR_NO_GEOMETRY")
  }
}