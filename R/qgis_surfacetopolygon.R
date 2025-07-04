##' QGIS Algorithm provided by QGIS (native c++) Surface to polygon (native:surfacetopolygon). Exports a polygon layer containing a mesh layer's boundary. This algorithm exports a polygon layer containing a mesh layer's boundary. It may contain holes and it may be a multi-part polygon.
##'
##' @title QGIS algorithm - Surface to polygon
##'
##' @param INPUT `mesh` - Input mesh layer. Path to a mesh layer.
##' @param CRS_OUTPUT `crs` - Output coordinate system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Output vector layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output vector layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_surfacetopolygon <- function(INPUT = qgisprocess:::qgis_default_value(), CRS_OUTPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:surfacetopolygon")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:surfacetopolygon", `INPUT` = INPUT, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:surfacetopolygon", `INPUT` = INPUT, `CRS_OUTPUT` = CRS_OUTPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}