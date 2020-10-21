##' QGIS Algorithm provided by SAGA Polygon dissolve (by attribute) (saga:polygondissolvebyattribute)
##'
##' @title QGIS algorithm Polygon dissolve (by attribute)
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param FIELD_1 `field` - 1. Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_2 `field` - 2. Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_3 `field` - 3. Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param BND_KEEP `boolean` - Keep inner boundaries. 1 for true/yes. 0 for false/no.
##' @param DISSOLVED `vectorDestination` - Dissolved. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DISSOLVED - outputVector - Dissolved
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygondissolvebyattribute <- function(POLYGONS = qgisprocess::qgis_default_value(), FIELD_1 = qgisprocess::qgis_default_value(), FIELD_2 = qgisprocess::qgis_default_value(), FIELD_3 = qgisprocess::qgis_default_value(), BND_KEEP = qgisprocess::qgis_default_value(), DISSOLVED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:polygondissolvebyattribute",`POLYGONS` = POLYGONS, `FIELD_1` = FIELD_1, `FIELD_2` = FIELD_2, `FIELD_3` = FIELD_3, `BND_KEEP` = BND_KEEP, `DISSOLVED` = DISSOLVED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DISSOLVED")
  }
}