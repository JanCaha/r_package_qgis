##' QGIS Algorithm provided by QGIS (native c++) Convert spatial bookmarks to layer (native:bookmarkstolayer)
##'
##' @title QGIS algorithm Convert spatial bookmarks to layer
##'
##' @param SOURCE `enum`  of `("Project bookmarks", "User bookmarks")` - Bookmark source. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CRS `crs` - Output CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Outpu
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_bookmarkstolayer <- function(SOURCE = qgisprocess::qgis_default_value(), CRS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:bookmarkstolayer",`SOURCE` = SOURCE, `CRS` = CRS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}