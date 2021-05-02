##' QGIS Algorithm provided by QGIS (native c++) Add X/Y fields to layer (native:addxyfields)
##'
##' @title QGIS algorithm Add X/Y fields to layer
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param CRS `crs` - Coordinate system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param PREFIX `string` - Field prefix. String value.
##' @param OUTPUT `sink` - Added fields. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Added fields
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_addxyfields <- function(INPUT = qgisprocess::qgis_default_value(), CRS = qgisprocess::qgis_default_value(), PREFIX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:addxyfields")
  output <- qgisprocess::qgis_run_algorithm("native:addxyfields",`INPUT` = INPUT, `CRS` = CRS, `PREFIX` = PREFIX, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}