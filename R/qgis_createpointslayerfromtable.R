##' QGIS Algorithm provided by QGIS (native c++) Create points layer from table (native:createpointslayerfromtable)
##'
##' @title QGIS algorithm Create points layer from table
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param XFIELD `field` - X field. The name of an existing field. ; delimited list of existing field names.
##' @param YFIELD `field` - Y field. The name of an existing field. ; delimited list of existing field names.
##' @param ZFIELD `field` - Z field. The name of an existing field. ; delimited list of existing field names.
##' @param MFIELD `field` - M field. The name of an existing field. ; delimited list of existing field names.
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Points from table. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Points from table
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_createpointslayerfromtable <- function(INPUT = qgisprocess::qgis_default_value(), XFIELD = qgisprocess::qgis_default_value(), YFIELD = qgisprocess::qgis_default_value(), ZFIELD = qgisprocess::qgis_default_value(), MFIELD = qgisprocess::qgis_default_value(), TARGET_CRS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:createpointslayerfromtable")
  output <- qgisprocess::qgis_run_algorithm("native:createpointslayerfromtable",`INPUT` = INPUT, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `ZFIELD` = ZFIELD, `MFIELD` = MFIELD, `TARGET_CRS` = TARGET_CRS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}