##' QGIS Algorithm provided by SAGA Next Gen Import raster (sagang:importraster). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILES: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file MULTIPLE: Multiple Bands Output 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) single grids 		- 1: (1) grid collection 		- 2: (2) automatic 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SELECTION: Select from Multiple Bands 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SELECT_SORT: Alphanumeric Sorting 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TRANSFORM: Transformation 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESAMPLING: Resampling 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EXTENT: Extent 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) original 		- 1: (1) user defined 		- 2: (2) grid system 		- 3: (3) shapes extent 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EXTENT_XMIN: Left 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT_XMAX: Right 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT_YMIN: Bottom 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT_YMAX: Top 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENT_SHAPES: Shapes Extent 	Argument type:	source 	Acceptable values: 		- Path to a vector layer EXTENT_BUFFER: Buffer 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Import raster
##'
##' @param GRIDS `rasterDestination` - Grids. Path for new raster layer.
##' @param FILES `file` - Files. Path to a file.
##' @param MULTIPLE `enum`  of `("(0) single grids", "(1) grid collection", "(2) automatic")` - Multiple Bands Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SELECTION `string` - Select from Multiple Bands. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SELECT_SORT `boolean` - Alphanumeric Sorting. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TRANSFORM `boolean` - Transformation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTENT `enum`  of `("(0) original", "(1) user defined", "(2) grid system", "(3) shapes extent")` - Extent. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTENT_XMIN `number` - Left. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT_XMAX `number` - Right. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT_YMIN `number` - Bottom. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT_YMAX `number` - Top. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT_SHAPES `source` - Shapes Extent. Path to a vector layer.
##' @param EXTENT_BUFFER `number` - Buffer. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRIDS - outputRaster - Grids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importraster <- function(GRIDS = qgisprocess:::qgis_default_value(), FILES = qgisprocess:::qgis_default_value(), MULTIPLE = qgisprocess:::qgis_default_value(), SELECTION = qgisprocess:::qgis_default_value(), SELECT_SORT = qgisprocess:::qgis_default_value(), TRANSFORM = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), EXTENT_XMIN = qgisprocess:::qgis_default_value(), EXTENT_XMAX = qgisprocess:::qgis_default_value(), EXTENT_YMIN = qgisprocess:::qgis_default_value(), EXTENT_YMAX = qgisprocess:::qgis_default_value(), EXTENT_SHAPES = qgisprocess:::qgis_default_value(), EXTENT_BUFFER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importraster", `GRIDS` = GRIDS, `FILES` = FILES, `MULTIPLE` = MULTIPLE, `SELECTION` = SELECTION, `SELECT_SORT` = SELECT_SORT, `TRANSFORM` = TRANSFORM, `RESAMPLING` = RESAMPLING, `EXTENT` = EXTENT, `EXTENT_XMIN` = EXTENT_XMIN, `EXTENT_XMAX` = EXTENT_XMAX, `EXTENT_YMIN` = EXTENT_YMIN, `EXTENT_YMAX` = EXTENT_YMAX, `EXTENT_SHAPES` = EXTENT_SHAPES, `EXTENT_BUFFER` = EXTENT_BUFFER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importraster", `GRIDS` = GRIDS, `FILES` = FILES, `MULTIPLE` = MULTIPLE, `SELECTION` = SELECTION, `SELECT_SORT` = SELECT_SORT, `TRANSFORM` = TRANSFORM, `RESAMPLING` = RESAMPLING, `EXTENT` = EXTENT, `EXTENT_XMIN` = EXTENT_XMIN, `EXTENT_XMAX` = EXTENT_XMAX, `EXTENT_YMIN` = EXTENT_YMIN, `EXTENT_YMAX` = EXTENT_YMAX, `EXTENT_SHAPES` = EXTENT_SHAPES, `EXTENT_BUFFER` = EXTENT_BUFFER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRIDS")
  }
}