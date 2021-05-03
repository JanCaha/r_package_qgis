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
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Count
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_countpointsinpolygon <- function(POLYGONS = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(), WEIGHT = qgisprocess::qgis_default_value(), CLASSFIELD = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:countpointsinpolygon")

  output <- qgisprocess::qgis_run_algorithm("native:countpointsinpolygon", `POLYGONS` = POLYGONS, `POINTS` = POINTS, `WEIGHT` = WEIGHT, `CLASSFIELD` = CLASSFIELD, `FIELD` = FIELD, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}