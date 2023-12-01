##' QGIS Algorithm provided by QGIS (native c++) Align raster (native:alignsingleraster). Aligns raster by resampling it to the same cell size and reprojecting to the same CRS as a reference raster.
##'
##' @title QGIS algorithm - Align raster
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param RESAMPLING_METHOD `enum`  of `("Nearest Neighbour", "Bilinear (2x2 Kernel)", "Cubic (4x4 Kernel)", "Cubic B-Spline (4x4 Kernel)", "Lanczos (6x6 Kernel)", "Average", "Mode", "Maximum", "Minimum", "Median", "First Quartile (Q1)", "Third Quartile (Q3)")` - Resampling method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESCALE `boolean` - Rescale values according to the cell size. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param REFERENCE_LAYER `raster` - Reference layer. Path to a raster layer.
##' @param CRS `crs` - Override reference CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param CELL_SIZE_X `number` - Override reference cell size X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CELL_SIZE_Y `number` - Override reference cell size Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRID_OFFSET_X `number` - Override reference grid offset X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRID_OFFSET_Y `number` - Override reference grid offset Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT `extent` - Clip to extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param OUTPUT `rasterDestination` - Aligned raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Aligned raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_alignsingleraster <- function(INPUT = qgisprocess:::qgis_default_value(), RESAMPLING_METHOD = qgisprocess:::qgis_default_value(), RESCALE = qgisprocess:::qgis_default_value(), REFERENCE_LAYER = qgisprocess:::qgis_default_value(), CRS = qgisprocess:::qgis_default_value(), CELL_SIZE_X = qgisprocess:::qgis_default_value(), CELL_SIZE_Y = qgisprocess:::qgis_default_value(), GRID_OFFSET_X = qgisprocess:::qgis_default_value(), GRID_OFFSET_Y = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:alignsingleraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:alignsingleraster", `INPUT` = INPUT, `RESAMPLING_METHOD` = RESAMPLING_METHOD, `RESCALE` = RESCALE, `REFERENCE_LAYER` = REFERENCE_LAYER, `CRS` = CRS, `CELL_SIZE_X` = CELL_SIZE_X, `CELL_SIZE_Y` = CELL_SIZE_Y, `GRID_OFFSET_X` = GRID_OFFSET_X, `GRID_OFFSET_Y` = GRID_OFFSET_Y, `EXTENT` = EXTENT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:alignsingleraster", `INPUT` = INPUT, `RESAMPLING_METHOD` = RESAMPLING_METHOD, `RESCALE` = RESCALE, `REFERENCE_LAYER` = REFERENCE_LAYER, `CRS` = CRS, `CELL_SIZE_X` = CELL_SIZE_X, `CELL_SIZE_Y` = CELL_SIZE_Y, `GRID_OFFSET_X` = GRID_OFFSET_X, `GRID_OFFSET_Y` = GRID_OFFSET_Y, `EXTENT` = EXTENT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}