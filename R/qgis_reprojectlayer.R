##' QGIS Algorithm provided by QGIS (native c++) Reproject layer (native:reprojectlayer)
##'
##' @title QGIS algorithm Reproject layer
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OPERATION `coordinateoperation` - Coordinate operation. String representation of Proj coordinate operation.
##' @param OUTPUT `sink` - Reprojected. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Reprojected
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_reprojectlayer <- function(INPUT = qgisprocess::qgis_default_value(), TARGET_CRS = qgisprocess::qgis_default_value(), OPERATION = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:reprojectlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:reprojectlayer", `INPUT` = INPUT, `TARGET_CRS` = TARGET_CRS, `OPERATION` = OPERATION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:reprojectlayer", `INPUT` = INPUT, `TARGET_CRS` = TARGET_CRS, `OPERATION` = OPERATION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}