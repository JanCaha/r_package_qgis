##' QGIS Algorithm provided by QGIS (native c++) Print layout map extent to layer (native:printlayoutmapextenttolayer)
##'
##' @title QGIS algorithm Print layout map extent to layer
##'
##' @param LAYOUT `layout` - Print layout. Name of print layout in current project.
##' @param MAP `layoutitem` - Map item. UUID or item id of layout item.
##' @param CRS `crs` - Override CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Extent. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Extent
##' * WIDTH - outputNumber - Map width
##' * HEIGHT - outputNumber - Map height
##' * SCALE - outputNumber - Map scale
##' * ROTATION - outputNumber - Map rotation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_printlayoutmapextenttolayer <- function(LAYOUT = qgisprocess::qgis_default_value(), MAP = qgisprocess::qgis_default_value(), CRS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:printlayoutmapextenttolayer")
  output <- qgisprocess::qgis_run_algorithm("native:printlayoutmapextenttolayer",`LAYOUT` = LAYOUT, `MAP` = MAP, `CRS` = CRS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}