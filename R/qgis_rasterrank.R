##' QGIS Algorithm provided by QGIS (native c++) Raster rank (native:rasterrank). Performs a cell-by-cell analysis in which output values match the rank of a sorted list of overlapping cell values from input layers. This algorithm performs a cell-by-cell analysis in which output values match the rank of a sorted list of overlapping cell values from input layers. The output raster will be multi-band if multiple ranks are provided. If multiband rasters are used in the data raster stack, the algorithm will always perform the analysis on the first band of the rasters.
##'
##' @title QGIS algorithm - Raster rank
##'
##' @param INPUT_RASTERS `multilayer` - Input raster layers. .
##' @param RANKS `string` - Rank(s) (separate multiple ranks using commas). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NODATA_HANDLING `enum`  of `("Exclude NoData from values lists", "Presence of NoData in a values list results in NoData output cell")` - NoData value handling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTENT `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param CELL_SIZE `number` - Output cell size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS `crs` - Output CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `rasterDestination` - Ranked. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Ranked
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rasterrank <- function(INPUT_RASTERS = qgisprocess:::qgis_default_value(), RANKS = qgisprocess:::qgis_default_value(), NODATA_HANDLING = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), CELL_SIZE = qgisprocess:::qgis_default_value(), CRS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:rasterrank")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:rasterrank", `INPUT_RASTERS` = INPUT_RASTERS, `RANKS` = RANKS, `NODATA_HANDLING` = NODATA_HANDLING, `EXTENT` = EXTENT, `CELL_SIZE` = CELL_SIZE, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:rasterrank", `INPUT_RASTERS` = INPUT_RASTERS, `RANKS` = RANKS, `NODATA_HANDLING` = NODATA_HANDLING, `EXTENT` = EXTENT, `CELL_SIZE` = CELL_SIZE, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}