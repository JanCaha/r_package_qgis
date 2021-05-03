##' QGIS Algorithm provided by GDAL Build virtual raster (gdal:buildvirtualraster)
##'
##' @title QGIS algorithm Build virtual raster
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param RESOLUTION `enum`  of `("Average", "Highest", "Lowest")` - Resolution. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEPARATE `boolean` - Place each input file into a separate band. 1 for true/yes. 0 for false/no.
##' @param PROJ_DIFFERENCE `boolean` - Allow projection difference. 1 for true/yes. 0 for false/no.
##' @param ADD_ALPHA `boolean` - Add alpha mask band to VRT when source raster has none. 1 for true/yes. 0 for false/no.
##' @param ASSIGN_CRS `crs` - Override projection for the output file. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param RESAMPLING `enum`  of `("Nearest Neighbour", "Bilinear", "Cubic Convolution", "B-Spline Convolution", "Lanczos Windowed Sinc", "Average", "Mode")` - Resampling algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SRC_NODATA `string` - Nodata value(s) for input bands (space separated). String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Virtual. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Virtual
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_buildvirtualraster <- function(INPUT = qgisprocess::qgis_default_value(), RESOLUTION = qgisprocess::qgis_default_value(), SEPARATE = qgisprocess::qgis_default_value(), PROJ_DIFFERENCE = qgisprocess::qgis_default_value(), ADD_ALPHA = qgisprocess::qgis_default_value(), ASSIGN_CRS = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), SRC_NODATA = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("gdal:buildvirtualraster")

  output <- qgisprocess::qgis_run_algorithm("gdal:buildvirtualraster", `INPUT` = INPUT, `RESOLUTION` = RESOLUTION, `SEPARATE` = SEPARATE, `PROJ_DIFFERENCE` = PROJ_DIFFERENCE, `ADD_ALPHA` = ADD_ALPHA, `ASSIGN_CRS` = ASSIGN_CRS, `RESAMPLING` = RESAMPLING, `SRC_NODATA` = SRC_NODATA, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}