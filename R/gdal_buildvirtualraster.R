##' QGIS Algorithm provided by GDAL Build virtual raster (gdal:buildvirtualraster). ---------------- Arguments ----------------  INPUT: Input layers 	Argument type:	multilayer RESOLUTION: Resolution 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: Average 		- 1: Highest 		- 2: Lowest 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SEPARATE: Place each input file into a separate band 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PROJ_DIFFERENCE: Allow projection difference 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ADD_ALPHA: Add alpha mask band to VRT when source raster has none 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ASSIGN_CRS: Override projection for the output file (optional) 	Argument type:	crs 	Acceptable values: 		- CRS as an auth ID (e.g. 'EPSG:3111') 		- CRS as a PROJ4 string (e.g. 'PROJ4:…') 		- CRS as a WKT string (e.g. 'WKT:…') 		- Path to a layer. The CRS of the layer is used. RESAMPLING: Resampling algorithm 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: Nearest Neighbour 		- 1: Bilinear 		- 2: Cubic Convolution 		- 3: B-Spline Convolution 		- 4: Lanczos Windowed Sinc 		- 5: Average 		- 6: Mode 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SRC_NODATA: Nodata value(s) for input bands (space separated) (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Virtual 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Build virtual raster
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param RESOLUTION `enum`  of `("Average", "Highest", "Lowest")` - Resolution. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEPARATE `boolean` - Place each input file into a separate band. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PROJ_DIFFERENCE `boolean` - Allow projection difference. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ADD_ALPHA `boolean` - Add alpha mask band to VRT when source raster has none. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ASSIGN_CRS `crs` - Override projection for the output file. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param RESAMPLING `enum`  of `("Nearest Neighbour", "Bilinear", "Cubic Convolution", "B-Spline Convolution", "Lanczos Windowed Sinc", "Average", "Mode")` - Resampling algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SRC_NODATA `string` - Nodata value(s) for input bands (space separated). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTRA `string` - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Virtual. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Virtual
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_buildvirtualraster <- function(INPUT = qgisprocess:::qgis_default_value(), RESOLUTION = qgisprocess:::qgis_default_value(), SEPARATE = qgisprocess:::qgis_default_value(), PROJ_DIFFERENCE = qgisprocess:::qgis_default_value(), ADD_ALPHA = qgisprocess:::qgis_default_value(), ASSIGN_CRS = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), SRC_NODATA = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:buildvirtualraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:buildvirtualraster", `INPUT` = INPUT, `RESOLUTION` = RESOLUTION, `SEPARATE` = SEPARATE, `PROJ_DIFFERENCE` = PROJ_DIFFERENCE, `ADD_ALPHA` = ADD_ALPHA, `ASSIGN_CRS` = ASSIGN_CRS, `RESAMPLING` = RESAMPLING, `SRC_NODATA` = SRC_NODATA, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:buildvirtualraster", `INPUT` = INPUT, `RESOLUTION` = RESOLUTION, `SEPARATE` = SEPARATE, `PROJ_DIFFERENCE` = PROJ_DIFFERENCE, `ADD_ALPHA` = ADD_ALPHA, `ASSIGN_CRS` = ASSIGN_CRS, `RESAMPLING` = RESAMPLING, `SRC_NODATA` = SRC_NODATA, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}