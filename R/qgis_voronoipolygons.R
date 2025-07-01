##' QGIS Algorithm provided by QGIS (native c++) Voronoi polygons (native:voronoipolygons). Generates a polygon layer containing the Voronoi diagram corresponding to input points. This algorithm generates a polygon layer containing the Voronoi diagram corresponding to input points.
##'
##' @title QGIS algorithm - Voronoi polygons
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param BUFFER `number` - Buffer region (% of extent). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COPY_ATTRIBUTES `boolean` - Copy attributes from input features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Voronoi polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Voronoi polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_voronoipolygons <- function(INPUT = qgisprocess:::qgis_default_value(), BUFFER = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), COPY_ATTRIBUTES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:voronoipolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:voronoipolygons", `INPUT` = INPUT, `BUFFER` = BUFFER, `TOLERANCE` = TOLERANCE, `COPY_ATTRIBUTES` = COPY_ATTRIBUTES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:voronoipolygons", `INPUT` = INPUT, `BUFFER` = BUFFER, `TOLERANCE` = TOLERANCE, `COPY_ATTRIBUTES` = COPY_ATTRIBUTES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}