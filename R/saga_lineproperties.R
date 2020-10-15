##' QGIS Algorithm provided by SAGA Line properties (saga:lineproperties)
##'
##' @title QGIS algorithm Line properties
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param BPARTS `boolean` - Number of Parts. 1 for true/yes. 0 for false/no.
##' @param BPOINTS `boolean` - Number of Vertices. 1 for true/yes. 0 for false/no.
##' @param BLENGTH `boolean` - Length. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `vectorDestination` - Lines with Property Attributes. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Lines with Property Attributes
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_lineproperties <- function(LINES = qgisprocess::qgis_default_value(), BPARTS = qgisprocess::qgis_default_value(), BPOINTS = qgisprocess::qgis_default_value(), BLENGTH = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:lineproperties",`LINES` = LINES, `BPARTS` = BPARTS, `BPOINTS` = BPOINTS, `BLENGTH` = BLENGTH, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}