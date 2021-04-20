##' QGIS Algorithm provided by GDAL Assign projection (gdal:assignprojection)
##'
##' @title QGIS algorithm Assign projection
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param CRS `crs` - Desired CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Layer with projectio
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_assignprojection <- function(INPUT = qgisprocess::qgis_default_value(), CRS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:assignprojection",`INPUT` = INPUT, `CRS` = CRS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}