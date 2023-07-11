##' QGIS Algorithm provided by QGIS (native c++) Filter by geometry type (native:filterbygeometry). Filters features by geometry type This algorithm filters features by their geometry type. Incoming features will be directed to different outputs based on whether they have a point, line or polygon geometry.
##'
##' @title QGIS algorithm - Filter by geometry type
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param POINTS `sink` - Point features. Path for new vector layer.
##' @param LINES `sink` - Line features. Path for new vector layer.
##' @param POLYGONS `sink` - Polygon features. Path for new vector layer.
##' @param NO_GEOMETRY `sink` - Features with no geometry. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LINES - outputVector - Line features
##' * LINE_COUNT - outputNumber - Total count of line features
##' * NO_GEOMETRY - outputVector - Features with no geometry
##' * NO_GEOMETRY_COUNT - outputNumber - Total count of features without geometry
##' * POINTS - outputVector - Point features
##' * POINT_COUNT - outputNumber - Total count of point features
##' * POLYGONS - outputVector - Polygon features
##' * POLYGON_COUNT - outputNumber - Total count of polygon features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_filterbygeometry <- function(INPUT = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), LINES = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), NO_GEOMETRY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:filterbygeometry")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:filterbygeometry", `INPUT` = INPUT, `POINTS` = POINTS, `LINES` = LINES, `POLYGONS` = POLYGONS, `NO_GEOMETRY` = NO_GEOMETRY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:filterbygeometry", `INPUT` = INPUT, `POINTS` = POINTS, `LINES` = LINES, `POLYGONS` = POLYGONS, `NO_GEOMETRY` = NO_GEOMETRY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LINES")
  }
}