##' QGIS Algorithm provided by SAGA Next Gen Coordinate transformation (grid list) (sagang:coordinatetransformationgridlist). ---------------- Arguments ----------------  CRS_METHOD: Get CRS Definition from... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Proj4 Parameters 		- 1: (1) EPSG Code 		- 2: (2) Well Known Text File 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CRS_PROJ4: Proj4 Parameters 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRS_FILE: Well Known Text File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file CRS_EPSG: Authority Code 	Default value:	-1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRS_EPSG_AUTH: Authority 	Default value:	EPSG 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SOURCE: Source 	Argument type:	multilayer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' BYTEWISE: Bytewise Interpolation 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KEEP_TYPE: Preserve Data Type 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_AREA: Use Target Area Polygon 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GRIDS: Target 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUT_X: X Coordinates 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUT_Y: Y Coordinates 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Coordinate transformation (grid list)
##'
##' @param CRS_METHOD `enum`  of `("(0) Proj4 Parameters", "(1) EPSG Code", "(2) Well Known Text File")` - Get CRS Definition from.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CRS_PROJ4 `string` - Proj4 Parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_FILE `file` - Well Known Text File. Path to a file.
##' @param CRS_EPSG `number` - Authority Code. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS_EPSG_AUTH `string` - Authority. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SOURCE `multilayer` - Source. .
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BYTEWISE `boolean` - Bytewise Interpolation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KEEP_TYPE `boolean` - Preserve Data Type. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_AREA `boolean` - Use Target Area Polygon. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRIDS `rasterDestination` - Target. Path for new raster layer.
##' @param OUT_X `rasterDestination` - X Coordinates. Path for new raster layer.
##' @param OUT_Y `rasterDestination` - Y Coordinates. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRIDS - outputRaster - Target
##' * OUT_X - outputRaster - X Coordinates
##' * OUT_Y - outputRaster - Y Coordinates
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_coordinatetransformationgridlist <- function(CRS_METHOD = qgisprocess:::qgis_default_value(), CRS_PROJ4 = qgisprocess:::qgis_default_value(), CRS_FILE = qgisprocess:::qgis_default_value(), CRS_EPSG = qgisprocess:::qgis_default_value(), CRS_EPSG_AUTH = qgisprocess:::qgis_default_value(), SOURCE = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), BYTEWISE = qgisprocess:::qgis_default_value(), KEEP_TYPE = qgisprocess:::qgis_default_value(), TARGET_AREA = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(), GRIDS = qgisprocess:::qgis_default_value(), OUT_X = qgisprocess:::qgis_default_value(), OUT_Y = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:coordinatetransformationgridlist")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:coordinatetransformationgridlist", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH, `SOURCE` = SOURCE, `RESAMPLING` = RESAMPLING, `BYTEWISE` = BYTEWISE, `KEEP_TYPE` = KEEP_TYPE, `TARGET_AREA` = TARGET_AREA, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `GRIDS` = GRIDS, `OUT_X` = OUT_X, `OUT_Y` = OUT_Y,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:coordinatetransformationgridlist", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH, `SOURCE` = SOURCE, `RESAMPLING` = RESAMPLING, `BYTEWISE` = BYTEWISE, `KEEP_TYPE` = KEEP_TYPE, `TARGET_AREA` = TARGET_AREA, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `GRIDS` = GRIDS, `OUT_X` = OUT_X, `OUT_Y` = OUT_Y,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRIDS")
  }
}