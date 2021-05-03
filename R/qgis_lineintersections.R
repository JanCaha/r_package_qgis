##' QGIS Algorithm provided by QGIS (native c++) Line intersections (native:lineintersections)
##'
##' @title QGIS algorithm Line intersections
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param INTERSECT `source` - Intersect layer. Path to a vector layer.
##' @param INPUT_FIELDS `field` - Input fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.
##' @param INTERSECT_FIELDS `field` - Intersect fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.
##' @param INTERSECT_FIELDS_PREFIX `string` - Intersect fields prefix. String value.
##' @param OUTPUT `sink` - Intersections. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Intersections
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_lineintersections <- function(INPUT = qgisprocess::qgis_default_value(), INTERSECT = qgisprocess::qgis_default_value(), INPUT_FIELDS = qgisprocess::qgis_default_value(), INTERSECT_FIELDS = qgisprocess::qgis_default_value(), INTERSECT_FIELDS_PREFIX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:lineintersections")

  output <- qgisprocess::qgis_run_algorithm("native:lineintersections", `INPUT` = INPUT, `INTERSECT` = INTERSECT, `INPUT_FIELDS` = INPUT_FIELDS, `INTERSECT_FIELDS` = INTERSECT_FIELDS, `INTERSECT_FIELDS_PREFIX` = INTERSECT_FIELDS_PREFIX, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}