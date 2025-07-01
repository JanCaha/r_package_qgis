##' QGIS Algorithm provided by QGIS (native c++) Assign projection (native:assignprojection). Assigns a new projection to a copy of a vector layer, with the exact same features and geometries. This algorithm assigns a new projection to a vector layer. It creates a new layer with the exact same features and geometries as the input one, but assigned to a new CRS. E.g. the geometries are not reprojected, they are just assigned to a different CRS. This algorithm can be used to repair layers which have been assigned an incorrect projection.  Attributes are not modified by this algorithm.
##'
##' @title QGIS algorithm - Assign projection
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param CRS `crs` - Assigned CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Assigned CRS. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Assigned CRS
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_assignprojection <- function(INPUT = qgisprocess:::qgis_default_value(), CRS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:assignprojection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:assignprojection", `INPUT` = INPUT, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:assignprojection", `INPUT` = INPUT, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}