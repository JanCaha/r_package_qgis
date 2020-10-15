##' QGIS Algorithm provided by QGIS (native c++) Assign projection (native:assignprojection)
##'
##' @title QGIS algorithm Assign projection
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param CRS `crs` - Assigned CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Assigned CRS. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Assigned CRS
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_assignprojection <- function(INPUT = qgisprocess::qgis_default_value(), CRS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:assignprojection",`INPUT` = INPUT, `CRS` = CRS, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}