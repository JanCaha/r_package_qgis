##' QGIS Algorithm provided by SAGA Add polygon attributes to points (saga:addpolygonattributestopoints)
##'
##' @title QGIS algorithm Add polygon attributes to points
##'
##' @param INPUT `source` - Points. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELDS `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Result
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_addpolygonattributestopoints <- function(INPUT = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:addpolygonattributestopoints")
  output <- qgisprocess::qgis_run_algorithm("saga:addpolygonattributestopoints",`INPUT` = INPUT, `POLYGONS` = POLYGONS, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}