##' QGIS Algorithm provided by SAGA Next Gen Mosaicking (sagang:mosaicking). ---------------- Arguments ----------------  GRIDS: Grids (optional) 	Argument type:	multilayer FILE_LIST: Input File List 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file NAME: Name 	Default value:	Mosaic 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TYPE: Data Storage Type 	Default value:	9 	Argument type:	enum 	Available values: 		- 0: (0) 1 bit 		- 1: (1) 1 byte unsigned integer 		- 2: (2) 1 byte signed integer 		- 3: (3) 2 byte unsigned integer 		- 4: (4) 2 byte signed integer 		- 5: (5) 4 byte unsigned integer 		- 6: (6) 4 byte signed integer 		- 7: (7) 4 byte floating point 		- 8: (8) 8 byte floating point 		- 9: (9) same as first grid in list 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OVERLAP: Overlapping Areas 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) first 		- 1: (1) last 		- 2: (2) minimum 		- 3: (3) maximum 		- 4: (4) mean 		- 5: (5) blend boundary 		- 6: (6) feathering 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' BLEND_DIST: Blending Distance 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BLEND_BND: Blending Boundary 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) valid data cells 		- 1: (1) grid boundaries 		- 2: (2) vertical grid boundaries 		- 3: (3) horizontal grid boundaries 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' MATCH: Match 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) match histogram of first grid in list 		- 2: (2) match histogram of overlapping area 		- 3: (3) regression 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_OUT_GRID: Target Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Mosaicking
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param FILE_LIST `file` - Input File List. Path to a file.
##' @param NAME `string` - Name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TYPE `enum`  of `("(0) 1 bit", "(1) 1 byte unsigned integer", "(2) 1 byte signed integer", "(3) 2 byte unsigned integer", "(4) 2 byte signed integer", "(5) 4 byte unsigned integer", "(6) 4 byte signed integer", "(7) 4 byte floating point", "(8) 8 byte floating point", "(9) same as first grid in list")` - Data Storage Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OVERLAP `enum`  of `("(0) first", "(1) last", "(2) minimum", "(3) maximum", "(4) mean", "(5) blend boundary", "(6) feathering")` - Overlapping Areas. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BLEND_DIST `number` - Blending Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BLEND_BND `enum`  of `("(0) valid data cells", "(1) grid boundaries", "(2) vertical grid boundaries", "(3) horizontal grid boundaries")` - Blending Boundary. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MATCH `enum`  of `("(0) none", "(1) match histogram of first grid in list", "(2) match histogram of overlapping area", "(3) regression")` - Match. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_OUT_GRID `rasterDestination` - Target Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TARGET_OUT_GRID - outputRaster - Target Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_mosaicking <- function(GRIDS = qgisprocess:::qgis_default_value(), FILE_LIST = qgisprocess:::qgis_default_value(), NAME = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), OVERLAP = qgisprocess:::qgis_default_value(), BLEND_DIST = qgisprocess:::qgis_default_value(), BLEND_BND = qgisprocess:::qgis_default_value(), MATCH = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(), TARGET_OUT_GRID = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:mosaicking")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:mosaicking", `GRIDS` = GRIDS, `FILE_LIST` = FILE_LIST, `NAME` = NAME, `TYPE` = TYPE, `RESAMPLING` = RESAMPLING, `OVERLAP` = OVERLAP, `BLEND_DIST` = BLEND_DIST, `BLEND_BND` = BLEND_BND, `MATCH` = MATCH, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_OUT_GRID` = TARGET_OUT_GRID,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:mosaicking", `GRIDS` = GRIDS, `FILE_LIST` = FILE_LIST, `NAME` = NAME, `TYPE` = TYPE, `RESAMPLING` = RESAMPLING, `OVERLAP` = OVERLAP, `BLEND_DIST` = BLEND_DIST, `BLEND_BND` = BLEND_BND, `MATCH` = MATCH, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_OUT_GRID` = TARGET_OUT_GRID,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TARGET_OUT_GRID")
  }
}