##' QGIS Algorithm provided by GDAL Buffer vectors (gdal:buffervectors)
##'
##' @title QGIS algorithm Buffer vectors
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param GEOMETRY `string` - Geometry column name. String value.
##' @param DISTANCE `distance` - Buffer distance. A numeric value.
##' @param FIELD `field` - Dissolve by attribute. The name of an existing field. ; delimited list of existing field names.
##' @param DISSOLVE `boolean` - Dissolve all results. 1 for true/yes. 0 for false/no.
##' @param EXPLODE_COLLECTIONS `boolean` - Produce one feature for each geometry in any kind of geometry collection in the source file. 1 for true/yes. 0 for false/no.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param OUTPUT `vectorDestination` - Buffer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Buffer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_buffervectors <- function(INPUT = qgisprocess::qgis_default_value(), GEOMETRY = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), DISSOLVE = qgisprocess::qgis_default_value(), EXPLODE_COLLECTIONS = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:buffervectors",`INPUT` = INPUT, `GEOMETRY` = GEOMETRY, `DISTANCE` = DISTANCE, `FIELD` = FIELD, `DISSOLVE` = DISSOLVE, `EXPLODE_COLLECTIONS` = EXPLODE_COLLECTIONS, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}