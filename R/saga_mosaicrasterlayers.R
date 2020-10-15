##' QGIS Algorithm provided by SAGA Mosaic raster layers (saga:mosaicrasterlayers)
##'
##' @title QGIS algorithm Mosaic raster layers
##'
##' @param GRIDS `multilayer` - Input Grids. .
##' @param NAME `string` - Name. String value.
##' @param TYPE `enum`  of `("[0] 1 bit", "[1] 1 byte unsigned integer", "[2] 1 byte signed integer", "[3] 2 byte unsigned integer", "[4] 2 byte signed integer", "[5] 4 byte unsigned integer", "[6] 4 byte signed integer", "[7] 4 byte floating point", "[8] 8 byte floating point")` - Preferred data storage type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Inverse Distance Interpolation", "[3] Bicubic Spline Interpolation", "[4] B-Spline Interpolation")` - Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OVERLAP `enum`  of `("[0] first", "[1] last", "[2] minimum", "[3] maximum", "[4] mean", "[5] blend boundary", "[6] feathering")` - Overlapping Areas. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BLEND_DIST `number` - Blending Distance. A numeric value.
##' @param MATCH `enum`  of `("[0] none", "[1] regression")` - Match. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: {name}.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_OUT_GRID `rasterDestination` - Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TARGET_OUT_GRID - outputRaster - Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_mosaicrasterlayers <- function(GRIDS = qgisprocess::qgis_default_value(), NAME = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), OVERLAP = qgisprocess::qgis_default_value(), BLEND_DIST = qgisprocess::qgis_default_value(), MATCH = qgisprocess::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess::qgis_default_value(), TARGET_USER_SIZE = qgisprocess::qgis_default_value(), TARGET_USER_FITS = qgisprocess::qgis_default_value(), TARGET_OUT_GRID = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:mosaicrasterlayers",`GRIDS` = GRIDS, `NAME` = NAME, `TYPE` = TYPE, `RESAMPLING` = RESAMPLING, `OVERLAP` = OVERLAP, `BLEND_DIST` = BLEND_DIST, `MATCH` = MATCH, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `TARGET_OUT_GRID` = TARGET_OUT_GRID,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TARGET_OUT_GRID")
}
}