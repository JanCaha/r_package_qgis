##' QGIS Algorithm provided by QGIS (native c++) Print layout map extent to layer (native:printlayoutmapextenttolayer)
##'
##' @title QGIS algorithm Print layout map extent to layer
##'
##' @param LAYOUT `layout` - Print layout. Name of print layout in current project.
##' @param MAP `layoutitem` - Map item. UUID or item id of layout item.
##' @param CRS `crs` - Override CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Extent. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * HEIGHT - outputNumber - Map height
##' * OUTPUT - outputVector - Extent
##' * ROTATION - outputNumber - Map rotation
##' * SCALE - outputNumber - Map scale
##' * WIDTH - outputNumber - Map width
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_printlayoutmapextenttolayer <- function(LAYOUT = qgisprocess:::qgis_default_value(), MAP = qgisprocess:::qgis_default_value(), CRS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:printlayoutmapextenttolayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:printlayoutmapextenttolayer", `LAYOUT` = LAYOUT, `MAP` = MAP, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:printlayoutmapextenttolayer", `LAYOUT` = LAYOUT, `MAP` = MAP, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "HEIGHT")
  }
}