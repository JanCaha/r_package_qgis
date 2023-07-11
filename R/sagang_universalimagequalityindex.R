##' QGIS Algorithm provided by SAGA Next Gen Universal image quality index (sagang:universalimagequalityindex). ---------------- Arguments ----------------  GRID_A: First Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GRID_B: Second Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer QUALITY: Universal Image Quality Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CORRELATION: Correlation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LUMINANCE: Luminance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONTRAST: Contrast 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer K1: k1 	Default value:	0.01 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression K2: k2 	Default value:	0.03 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression L: L 	Default value:	255 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_RADIUS: Radius 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Universal image quality index
##'
##' @param GRID_A `raster` - First Grid. Path to a raster layer.
##' @param GRID_B `raster` - Second Grid. Path to a raster layer.
##' @param QUALITY `rasterDestination` - Universal Image Quality Index. Path for new raster layer.
##' @param CORRELATION `rasterDestination` - Correlation. Path for new raster layer.
##' @param LUMINANCE `rasterDestination` - Luminance. Path for new raster layer.
##' @param CONTRAST `rasterDestination` - Contrast. Path for new raster layer.
##' @param K1 `number` - k1. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param K2 `number` - k2. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param L `number` - L. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONTRAST - outputRaster - Contrast
##' * CORRELATION - outputRaster - Correlation
##' * LUMINANCE - outputRaster - Luminance
##' * QUALITY - outputRaster - Universal Image Quality Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_universalimagequalityindex <- function(GRID_A = qgisprocess:::qgis_default_value(), GRID_B = qgisprocess:::qgis_default_value(), QUALITY = qgisprocess:::qgis_default_value(), CORRELATION = qgisprocess:::qgis_default_value(), LUMINANCE = qgisprocess:::qgis_default_value(), CONTRAST = qgisprocess:::qgis_default_value(), K1 = qgisprocess:::qgis_default_value(), K2 = qgisprocess:::qgis_default_value(), L = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:universalimagequalityindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:universalimagequalityindex", `GRID_A` = GRID_A, `GRID_B` = GRID_B, `QUALITY` = QUALITY, `CORRELATION` = CORRELATION, `LUMINANCE` = LUMINANCE, `CONTRAST` = CONTRAST, `K1` = K1, `K2` = K2, `L` = L, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:universalimagequalityindex", `GRID_A` = GRID_A, `GRID_B` = GRID_B, `QUALITY` = QUALITY, `CORRELATION` = CORRELATION, `LUMINANCE` = LUMINANCE, `CONTRAST` = CONTRAST, `K1` = K1, `K2` = K2, `L` = L, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CONTRAST")
  }
}