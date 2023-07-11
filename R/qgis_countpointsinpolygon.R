##' QGIS Algorithm provided by QGIS (native c++) Count points in polygon (native:countpointsinpolygon). Counts point features located within polygon features. This algorithm takes a points layer and a polygon layer and counts the number of points from the first one in each polygons of the second one.  A new polygons layer is generated, with the exact same content as the input polygons layer, but containing an additional field with the points count corresponding to each polygon.  An optional weight field can be used to assign weights to each point. If set, the count generated will be the sum of the weight field for each point contained by the polygon.  Alternatively, a unique class field can be specified. If set, points are classified based on the selected attribute, and if several points with the same attribute value are within the polygon, only one of them is counted. The final count of the point in a polygon is, therefore, the count of different classes that are found in it.  Both the weight field and unique class field cannot be specified. If they are, the weight field will take precedence and the unique class field will be ignored.
##'
##' @title QGIS algorithm - Count points in polygon
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param WEIGHT `field` - Weight field. The name of an existing field. ; delimited list of existing field names.
##' @param CLASSFIELD `field` - Class field. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD `string` - Count field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Count. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Count
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_countpointsinpolygon <- function(POLYGONS = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), CLASSFIELD = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:countpointsinpolygon")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:countpointsinpolygon", `POLYGONS` = POLYGONS, `POINTS` = POINTS, `WEIGHT` = WEIGHT, `CLASSFIELD` = CLASSFIELD, `FIELD` = FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:countpointsinpolygon", `POLYGONS` = POLYGONS, `POINTS` = POINTS, `WEIGHT` = WEIGHT, `CLASSFIELD` = CLASSFIELD, `FIELD` = FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}