##' QGIS Algorithm provided by QGIS (native c++) Count points in polygon (native:countpointsinpolygon)
##'
##' @title QGIS algorithm Count points in polygon
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param WEIGHT `field` - Weight field. The name of an existing field. ; delimited list of existing field names.
##' @param CLASSFIELD `field` - Class field. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD `string` - Count field name. String value.
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