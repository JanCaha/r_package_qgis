##' QGIS Algorithm provided by QGIS (native c++) Reproject layer (native:reprojectlayer). Creates a vector layer with geometries transformed to a new CRS. This algorithm reprojects a vector layer. It creates a new layer with the same features as the input one, but with geometries reprojected to a new CRS.  Attributes are not modified by this algorithm.
##'
##' @title QGIS algorithm - Reproject layer
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param CONVERT_CURVED_GEOMETRIES `boolean` - Convert curved geometries to straight segments. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' @importFrom qgisprocess qgis_run_algorithm

qgis_reprojectlayer <- function(INPUT = qgisprocess:::qgis_default_value(), TARGET_CRS = qgisprocess:::qgis_default_value(), CONVERT_CURVED_GEOMETRIES = qgisprocess:::qgis_default_value(), OPERATION = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:reprojectlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:reprojectlayer", `INPUT` = INPUT, `TARGET_CRS` = TARGET_CRS, `CONVERT_CURVED_GEOMETRIES` = CONVERT_CURVED_GEOMETRIES, `OPERATION` = OPERATION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:reprojectlayer", `INPUT` = INPUT, `TARGET_CRS` = TARGET_CRS, `CONVERT_CURVED_GEOMETRIES` = CONVERT_CURVED_GEOMETRIES, `OPERATION` = OPERATION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}