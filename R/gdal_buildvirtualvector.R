##' QGIS Algorithm provided by GDAL Build virtual vector (gdal:buildvirtualvector)
##'
##' @title QGIS algorithm Build virtual vector
##'
##' @param INPUT `multilayer` - Input datasources. .
##' @param UNIONED `boolean` - Create "unioned" VRT. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `vectorDestination` - Virtual vector. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Virtual vector
##' * VRT_STRING - outputString - Virtual string
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_buildvirtualvector <- function(INPUT = qgisprocess::qgis_default_value(), UNIONED = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("gdal:buildvirtualvector")
  output <- qgisprocess::qgis_run_algorithm("gdal:buildvirtualvector",`INPUT` = INPUT, `UNIONED` = UNIONED, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}