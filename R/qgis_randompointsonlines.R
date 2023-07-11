##' QGIS Algorithm provided by QGIS (native c++) Random points on lines (native:randompointsonlines). pThis algorithm creates a point layer, with points placed randomly on the lines of the iInput line layer/i. The default behavior is that the generated point features inherit the attributes of the line feature on which they were was generated./ppParameters / options:/p ul liFor each feature in the ibInput line layer/b/i, the algorithm attempts to add the specified ibNumber of points for each feature/b/i to the output layer./li liA ibMinimum distance between points/b/i and a ibGlobal minimum distance between points/b/i can be specified. A point will not be added if there is an already generated point within this (Euclidean) distance from the generated location. With iMinimum distance between points/i, only points on the same line feature are considered, while for iGlobal minimum distance between points/i all previously generated points are considered. If the iGlobal minimum distance between points/i is set larger than the (local) iMinimum distance between points/i, the latter has no effect.br If the iMinimum distance between points/i is too large, it may not be possible to generate the specified iNumber of points for each feature/i./li liThe ibMaximum number of attempts per point/b/i is only relevant if iMinimum distance between points/i or iGlobal minimum distance between points/i is greater than 0. The total number of points will bebr bnumber of input features/b * bNumber of points for each feature/ibr if there are no misses and all features have proper geometries./li liThe seed for the random generator can be provided (iRandom seed/i - integer, greater than 0)./li liThe user can choose not to ibInclude line feature attributes/b/i in the generated point features./li /ul pOutput from the algorithm:/p ul li A point layer containing the random points (codeOUTPUT/code)./li li The number of generated features (codePOINTS_GENERATED/code)./li li The number of missed points (codePOINTS_MISSED/code)./li li The number of features with non-empty geometry and missing points (codeLINES_WITH_MISSED_POINTS/code)./li li The number of features with an empty or no geometry (codeLINES_WITH_EMPTY_OR_NO_GEOMETRY/code)./li /ul
##'
##' @title QGIS algorithm - Random points on lines
##'
##' @param INPUT `source` - Input line layer. Path to a vector layer.
##' @param POINTS_NUMBER `number` - Number of points for each feature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIN_DISTANCE `distance` - Minimum distance between points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIN_DISTANCE_GLOBAL `distance` - Global minimum distance between points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_TRIES_PER_POINT `number` - Maximum number of search attempts (for Min. dist.  0). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEED `number` - Random seed. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INCLUDE_LINE_ATTRIBUTES `boolean` - Include line attributes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Random points on lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FEATURES_WITH_EMPTY_OR_NO_GEOMETRY - outputNumber - Number of features with empty or no geometry
##' * LINES_WITH_MISSED_POINTS - outputNumber - Number of features with missed points
##' * OUTPUT - outputVector - Random points on lines
##' * OUTPUT_POINTS - outputNumber - Total number of points generated
##' * POINTS_MISSED - outputNumber - Number of missed points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_randompointsonlines <- function(INPUT = qgisprocess:::qgis_default_value(), POINTS_NUMBER = qgisprocess:::qgis_default_value(), MIN_DISTANCE = qgisprocess:::qgis_default_value(), MIN_DISTANCE_GLOBAL = qgisprocess:::qgis_default_value(), MAX_TRIES_PER_POINT = qgisprocess:::qgis_default_value(), SEED = qgisprocess:::qgis_default_value(), INCLUDE_LINE_ATTRIBUTES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:randompointsonlines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:randompointsonlines", `INPUT` = INPUT, `POINTS_NUMBER` = POINTS_NUMBER, `MIN_DISTANCE` = MIN_DISTANCE, `MIN_DISTANCE_GLOBAL` = MIN_DISTANCE_GLOBAL, `MAX_TRIES_PER_POINT` = MAX_TRIES_PER_POINT, `SEED` = SEED, `INCLUDE_LINE_ATTRIBUTES` = INCLUDE_LINE_ATTRIBUTES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:randompointsonlines", `INPUT` = INPUT, `POINTS_NUMBER` = POINTS_NUMBER, `MIN_DISTANCE` = MIN_DISTANCE, `MIN_DISTANCE_GLOBAL` = MIN_DISTANCE_GLOBAL, `MAX_TRIES_PER_POINT` = MAX_TRIES_PER_POINT, `SEED` = SEED, `INCLUDE_LINE_ATTRIBUTES` = INCLUDE_LINE_ATTRIBUTES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FEATURES_WITH_EMPTY_OR_NO_GEOMETRY")
  }
}