##' QGIS Algorithm provided by GDAL Dissolve (gdal:dissolve)
##'
##' @title QGIS algorithm Dissolve
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Dissolve field. The name of an existing field. ; delimited list of existing field names.
##' @param GEOMETRY `string` - Geometry column name. String value.
##' @param EXPLODE_COLLECTIONS `boolean` - Produce one feature for each geometry in any kind of geometry collection in the source file. 1 for true/yes. 0 for false/no.
##' @param KEEP_ATTRIBUTES `boolean` - Keep input attributes. 1 for true/yes. 0 for false/no.
##' @param COUNT_FEATURES `boolean` - Count dissolved features. 1 for true/yes. 0 for false/no.
##' @param COMPUTE_AREA `boolean` - Compute area and perimeter of dissolved features. 1 for true/yes. 0 for false/no.
##' @param COMPUTE_STATISTICS `boolean` - Compute min/max/sum/mean for attribute. 1 for true/yes. 0 for false/no.
##' @param STATISTICS_ATTRIBUTE `field` - Numeric attribute to calculate statistics on. The name of an existing field. ; delimited list of existing field names.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param OUTPUT `vectorDestination` - Dissolved. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Dissolved
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_dissolve <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), GEOMETRY = qgisprocess::qgis_default_value(), EXPLODE_COLLECTIONS = qgisprocess::qgis_default_value(), KEEP_ATTRIBUTES = qgisprocess::qgis_default_value(), COUNT_FEATURES = qgisprocess::qgis_default_value(), COMPUTE_AREA = qgisprocess::qgis_default_value(), COMPUTE_STATISTICS = qgisprocess::qgis_default_value(), STATISTICS_ATTRIBUTE = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:dissolve",`INPUT` = INPUT, `FIELD` = FIELD, `GEOMETRY` = GEOMETRY, `EXPLODE_COLLECTIONS` = EXPLODE_COLLECTIONS, `KEEP_ATTRIBUTES` = KEEP_ATTRIBUTES, `COUNT_FEATURES` = COUNT_FEATURES, `COMPUTE_AREA` = COMPUTE_AREA, `COMPUTE_STATISTICS` = COMPUTE_STATISTICS, `STATISTICS_ATTRIBUTE` = STATISTICS_ATTRIBUTE, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}