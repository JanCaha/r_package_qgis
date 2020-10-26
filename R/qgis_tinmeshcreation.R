##' QGIS Algorithm provided by QGIS (native c++) TIN Mesh Creation (native:tinmeshcreation)
##'
##' @title QGIS algorithm TIN Mesh Creation
##'
##' @param SOURCE_DATA `tininputlayers` - Input layers. .
##' @param MESH_FORMAT `enum`  of `("2DM", "SELAFIN", "Ugrid")` - Output format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CRS_OUTPUT `crs` - Output Coordinate System. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT_MESH `fileDestination` - Output File. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_MESH - outputFile - Output File
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_tinmeshcreation <- function(SOURCE_DATA = qgisprocess::qgis_default_value(), MESH_FORMAT = qgisprocess::qgis_default_value(), CRS_OUTPUT = qgisprocess::qgis_default_value(), OUTPUT_MESH = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:tinmeshcreation",`SOURCE_DATA` = SOURCE_DATA, `MESH_FORMAT` = MESH_FORMAT, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT_MESH` = OUTPUT_MESH,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_MESH")
  }
}