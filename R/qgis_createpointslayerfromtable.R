##' QGIS Algorithm provided by QGIS (native c++) Create points layer from table (native:createpointslayerfromtable). This algorithm generates a points layer based on the values from an input table.  The table must contain a field with the X coordinate of each point and another one with the Y coordinate, as well as optional fields with Z and M values. A CRS for the output layer has to be specified, and the coordinates in the table are assumed to be expressed in the units used by that CRS. The attributes table of the resulting layer will be the input table.
##'
##' @title QGIS algorithm - Create points layer from table
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param XFIELD `field` - X field. The name of an existing field. ; delimited list of existing field names.
##' @param YFIELD `field` - Y field. The name of an existing field. ; delimited list of existing field names.
##' @param ZFIELD `field` - Z field. The name of an existing field. ; delimited list of existing field names.
##' @param MFIELD `field` - M field. The name of an existing field. ; delimited list of existing field names.
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Points from table. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Points from table
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_createpointslayerfromtable <- function(INPUT = qgisprocess:::qgis_default_value(), XFIELD = qgisprocess:::qgis_default_value(), YFIELD = qgisprocess:::qgis_default_value(), ZFIELD = qgisprocess:::qgis_default_value(), MFIELD = qgisprocess:::qgis_default_value(), TARGET_CRS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:createpointslayerfromtable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:createpointslayerfromtable", `INPUT` = INPUT, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `ZFIELD` = ZFIELD, `MFIELD` = MFIELD, `TARGET_CRS` = TARGET_CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:createpointslayerfromtable", `INPUT` = INPUT, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `ZFIELD` = ZFIELD, `MFIELD` = MFIELD, `TARGET_CRS` = TARGET_CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}