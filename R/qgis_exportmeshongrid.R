##' QGIS Algorithm provided by QGIS (native c++) Export mesh on grid (native:exportmeshongrid)
##'
##' @title QGIS algorithm Export mesh on grid
##'
##' @param INPUT `mesh` - Input Mesh Layer. Path to a mesh layer.
##' @param DATASET_GROUPS `meshdatasetgroups` - Dataset groups. .
##' @param DATASET_TIME `meshdatasettime` - Dataset time. .
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRID_SPACING `distance` - Grid spacing. A numeric value.
##' @param CRS_OUTPUT `crs` - Output coordinate system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param VECTOR_OPTION `enum`  of `("Cartesian (x,y)", "Polar (magnitude,degree)", "Cartesian and Polar")` - Export vector option. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Output vector layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output vector layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_exportmeshongrid <- function(INPUT = qgisprocess::qgis_default_value(), DATASET_GROUPS = qgisprocess::qgis_default_value(), DATASET_TIME = qgisprocess::qgis_default_value(), EXTENT = qgisprocess::qgis_default_value(), GRID_SPACING = qgisprocess::qgis_default_value(), CRS_OUTPUT = qgisprocess::qgis_default_value(), VECTOR_OPTION = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:exportmeshongrid",`INPUT` = INPUT, `DATASET_GROUPS` = DATASET_GROUPS, `DATASET_TIME` = DATASET_TIME, `EXTENT` = EXTENT, `GRID_SPACING` = GRID_SPACING, `CRS_OUTPUT` = CRS_OUTPUT, `VECTOR_OPTION` = VECTOR_OPTION, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}