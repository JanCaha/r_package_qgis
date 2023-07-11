##' QGIS Algorithm provided by SAGA Next Gen Import from virtual raster (vrt) (sagang:importfromvirtualrastervrt). ---------------- Arguments ----------------  VRT_NAME: VRT Filename 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file GRIDS: Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer EXTENT: Extent 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) user defined 		- 1: (1) grid system 		- 2: (2) shapes extent 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SHAPES: Shapes Extent 	Argument type:	source 	Acceptable values: 		- Path to a vector layer XMIN: Left 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression XMAX: Right 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YMIN: Bottom 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YMAX: Top 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BUFFER: Buffer 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MULTIPLE: Multiple Bands Output 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) single grids 		- 1: (1) grid collection 		- 2: (2) automatic 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TRANSFORM: Transformation 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESAMPLING: Resampling 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Import from virtual raster (vrt)
##'
##' @param VRT_NAME `file` - VRT Filename. Path to a file.
##' @param GRIDS `rasterDestination` - Grids. Path for new raster layer.
##' @param EXTENT `enum`  of `("(0) user defined", "(1) grid system", "(2) shapes extent")` - Extent. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SHAPES `source` - Shapes Extent. Path to a vector layer.
##' @param XMIN `number` - Left. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param XMAX `number` - Right. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YMIN `number` - Bottom. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YMAX `number` - Top. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BUFFER `number` - Buffer. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MULTIPLE `enum`  of `("(0) single grids", "(1) grid collection", "(2) automatic")` - Multiple Bands Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TRANSFORM `boolean` - Transformation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

sagang_importfromvirtualrastervrt <- function(VRT_NAME = qgisprocess:::qgis_default_value(), GRIDS = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), SHAPES = qgisprocess:::qgis_default_value(), XMIN = qgisprocess:::qgis_default_value(), XMAX = qgisprocess:::qgis_default_value(), YMIN = qgisprocess:::qgis_default_value(), YMAX = qgisprocess:::qgis_default_value(), BUFFER = qgisprocess:::qgis_default_value(), MULTIPLE = qgisprocess:::qgis_default_value(), TRANSFORM = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importfromvirtualrastervrt")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importfromvirtualrastervrt", `VRT_NAME` = VRT_NAME, `GRIDS` = GRIDS, `EXTENT` = EXTENT, `SHAPES` = SHAPES, `XMIN` = XMIN, `XMAX` = XMAX, `YMIN` = YMIN, `YMAX` = YMAX, `BUFFER` = BUFFER, `MULTIPLE` = MULTIPLE, `TRANSFORM` = TRANSFORM, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importfromvirtualrastervrt", `VRT_NAME` = VRT_NAME, `GRIDS` = GRIDS, `EXTENT` = EXTENT, `SHAPES` = SHAPES, `XMIN` = XMIN, `XMAX` = XMAX, `YMIN` = YMIN, `YMAX` = YMAX, `BUFFER` = BUFFER, `MULTIPLE` = MULTIPLE, `TRANSFORM` = TRANSFORM, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRIDS")
  }
}