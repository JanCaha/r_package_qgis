##' QGIS Algorithm provided by SAGA Next Gen Clip raster with polygon (sagang:cliprasterwithpolygon). ---------------- Arguments ----------------  INPUT: Input 	Argument type:	multilayer OUTPUT: Output 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer EXTENT: Target Extent 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) original 		- 1: (1) polygons 		- 2: (2) crop to data 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Clip raster with polygon
##'
##' @param INPUT `multilayer` - Input. .
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param EXTENT `enum`  of `("(0) original", "(1) polygons", "(2) crop to data")` - Target Extent. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_cliprasterwithpolygon <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:cliprasterwithpolygon")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:cliprasterwithpolygon", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `POLYGONS` = POLYGONS, `EXTENT` = EXTENT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:cliprasterwithpolygon", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `POLYGONS` = POLYGONS, `EXTENT` = EXTENT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}