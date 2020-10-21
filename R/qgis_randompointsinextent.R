##' QGIS Algorithm provided by QGIS (native c++) Random points in extent (native:randompointsinextent)
##'
##' @title QGIS algorithm Random points in extent
##'
##' @param EXTENT `extent` - Input extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param POINTS_NUMBER `number` - Number of points. A numeric value.
##' @param MIN_DISTANCE `distance` - Minimum distance between points. A numeric value.
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param MAX_ATTEMPTS `number` - Maximum number of search attempts given the minimum distance. A numeric value.
##' @param OUTPUT `sink` - Random points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Random points
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_randompointsinextent <- function(EXTENT = qgisprocess::qgis_default_value(), POINTS_NUMBER = qgisprocess::qgis_default_value(), MIN_DISTANCE = qgisprocess::qgis_default_value(), TARGET_CRS = qgisprocess::qgis_default_value(), MAX_ATTEMPTS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:randompointsinextent",`EXTENT` = EXTENT, `POINTS_NUMBER` = POINTS_NUMBER, `MIN_DISTANCE` = MIN_DISTANCE, `TARGET_CRS` = TARGET_CRS, `MAX_ATTEMPTS` = MAX_ATTEMPTS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}