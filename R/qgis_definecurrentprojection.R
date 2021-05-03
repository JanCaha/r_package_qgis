##' QGIS Algorithm provided by QGIS Define Shapefile projection (qgis:definecurrentprojection)
##'
##' @title QGIS algorithm Define Shapefile projection
##'
##' @param INPUT `vector` - Input Shapefile. Path to a vector layer.
##' @param CRS `crs` - CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INPUT - outputVector - Layer with projection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_definecurrentprojection <- function(INPUT = qgisprocess::qgis_default_value(), CRS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("qgis:definecurrentprojection")

  output <- qgisprocess::qgis_run_algorithm("qgis:definecurrentprojection", `INPUT` = INPUT, `CRS` = CRS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INPUT")
  }
}