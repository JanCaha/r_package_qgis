##' QGIS Algorithm provided by SAGA Variable distance buffer (saga:variabledistancebuffer)
##'
##' @title QGIS algorithm Variable distance buffer
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param DIST_FIELD `field` - Buffer Distance. The name of an existing field. ; delimited list of existing field names.
##' @param DIST_SCALE `number` - Scaling Factor for Attribute Value. A numeric value.
##' @param NZONES `number` - Number of Buffer Zones. A numeric value.
##' @param DARC `number` - Arc Vertex Distance (Degree). A numeric value.
##' @param DISSOLVE `boolean` - Dissolve Buffers. 1 for true/yes. 0 for false/no.
##' @param POLY_INNER `boolean` - Inner Buffer. 1 for true/yes. 0 for false/no.
##' @param BUFFER `vectorDestination` - Buffer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputVector - Buffer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_variabledistancebuffer <- function(SHAPES = qgisprocess::qgis_default_value(), DIST_FIELD = qgisprocess::qgis_default_value(), DIST_SCALE = qgisprocess::qgis_default_value(), NZONES = qgisprocess::qgis_default_value(), DARC = qgisprocess::qgis_default_value(), DISSOLVE = qgisprocess::qgis_default_value(), POLY_INNER = qgisprocess::qgis_default_value(), BUFFER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:variabledistancebuffer")
  output <- qgisprocess::qgis_run_algorithm("saga:variabledistancebuffer",`SHAPES` = SHAPES, `DIST_FIELD` = DIST_FIELD, `DIST_SCALE` = DIST_SCALE, `NZONES` = NZONES, `DARC` = DARC, `DISSOLVE` = DISSOLVE, `POLY_INNER` = POLY_INNER, `BUFFER` = BUFFER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BUFFER")
  }
}