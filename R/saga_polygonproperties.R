##' QGIS Algorithm provided by SAGA Polygon properties (saga:polygonproperties)
##'
##' @title QGIS algorithm Polygon properties
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param BPARTS `boolean` - Number of Parts. 1 for true/yes. 0 for false/no.
##' @param BPOINTS `boolean` - Number of Vertices. 1 for true/yes. 0 for false/no.
##' @param BLENGTH `boolean` - Perimeter. 1 for true/yes. 0 for false/no.
##' @param BAREA `boolean` - Area. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `vectorDestination` - Polygons with Property Attributes. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Polygons with Property Attributes
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonproperties <- function(POLYGONS = qgisprocess::qgis_default_value(), BPARTS = qgisprocess::qgis_default_value(), BPOINTS = qgisprocess::qgis_default_value(), BLENGTH = qgisprocess::qgis_default_value(), BAREA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:polygonproperties",`POLYGONS` = POLYGONS, `BPARTS` = BPARTS, `BPOINTS` = BPOINTS, `BLENGTH` = BLENGTH, `BAREA` = BAREA, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}