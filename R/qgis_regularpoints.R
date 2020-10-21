##' QGIS Algorithm provided by QGIS Regular points (qgis:regularpoints)
##'
##' @title QGIS algorithm Regular points
##'
##' @param EXTENT `extent` - Input extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param SPACING `distance` - Point spacing/count. A numeric value.
##' @param INSET `distance` - Initial inset from corner (LH side). A numeric value.
##' @param RANDOMIZE `boolean` - Apply random offset to point spacing. 1 for true/yes. 0 for false/no.
##' @param IS_SPACING `boolean` - Use point spacing. 1 for true/yes. 0 for false/no.
##' @param CRS `crs` - Output layer CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `sink` - Regular points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Regular points
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_regularpoints <- function(EXTENT = qgisprocess::qgis_default_value(), SPACING = qgisprocess::qgis_default_value(), INSET = qgisprocess::qgis_default_value(), RANDOMIZE = qgisprocess::qgis_default_value(), IS_SPACING = qgisprocess::qgis_default_value(), CRS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:regularpoints",`EXTENT` = EXTENT, `SPACING` = SPACING, `INSET` = INSET, `RANDOMIZE` = RANDOMIZE, `IS_SPACING` = IS_SPACING, `CRS` = CRS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}