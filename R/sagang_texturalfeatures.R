##' QGIS Algorithm provided by SAGA Next Gen Textural features (sagang:texturalfeatures). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ASM: Angular Second Moment 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CONTRAST: Contrast 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CORRELATION: Correlation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VARIANCE: Variance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer IDM: Inverse Diff Moment 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SUM_AVERAGE: Sum Average 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SUM_ENTROPY: Sum Entropy 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SUM_VARIANCE: Sum Variance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ENTROPY: Entropy 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIF_VARIANCE: Difference Variance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIF_ENTROPY: Difference Entropy 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MOC_1: Measure of Correlation-1 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MOC_2: Measure of Correlation-2 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIRECTION: Direction 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) all 		- 1: (1) N-S 		- 2: (2) NE-SW 		- 3: (3) E-W 		- 4: (4) SE-NW 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RADIUS: Radius 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DISTANCE: Distance 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAX_CATS: Maximum Number of Categories 	Default value:	256 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Textural features
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param ASM `rasterDestination` - Angular Second Moment. Path for new raster layer.
##' @param CONTRAST `rasterDestination` - Contrast. Path for new raster layer.
##' @param CORRELATION `rasterDestination` - Correlation. Path for new raster layer.
##' @param VARIANCE `rasterDestination` - Variance. Path for new raster layer.
##' @param IDM `rasterDestination` - Inverse Diff Moment. Path for new raster layer.
##' @param SUM_AVERAGE `rasterDestination` - Sum Average. Path for new raster layer.
##' @param SUM_ENTROPY `rasterDestination` - Sum Entropy. Path for new raster layer.
##' @param SUM_VARIANCE `rasterDestination` - Sum Variance. Path for new raster layer.
##' @param ENTROPY `rasterDestination` - Entropy. Path for new raster layer.
##' @param DIF_VARIANCE `rasterDestination` - Difference Variance. Path for new raster layer.
##' @param DIF_ENTROPY `rasterDestination` - Difference Entropy. Path for new raster layer.
##' @param MOC_1 `rasterDestination` - Measure of Correlation-1. Path for new raster layer.
##' @param MOC_2 `rasterDestination` - Measure of Correlation-2. Path for new raster layer.
##' @param DIRECTION `enum`  of `("(0) all", "(1) N-S", "(2) NE-SW", "(3) E-W", "(4) SE-NW")` - Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTANCE `number` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_CATS `number` - Maximum Number of Categories. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ASM - outputRaster - Angular Second Moment
##' * CONTRAST - outputRaster - Contrast
##' * CORRELATION - outputRaster - Correlation
##' * DIF_ENTROPY - outputRaster - Difference Entropy
##' * DIF_VARIANCE - outputRaster - Difference Variance
##' * ENTROPY - outputRaster - Entropy
##' * IDM - outputRaster - Inverse Diff Moment
##' * MOC_1 - outputRaster - Measure of Correlation-1
##' * MOC_2 - outputRaster - Measure of Correlation-2
##' * SUM_AVERAGE - outputRaster - Sum Average
##' * SUM_ENTROPY - outputRaster - Sum Entropy
##' * SUM_VARIANCE - outputRaster - Sum Variance
##' * VARIANCE - outputRaster - Variance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_texturalfeatures <- function(GRID = qgisprocess:::qgis_default_value(), ASM = qgisprocess:::qgis_default_value(), CONTRAST = qgisprocess:::qgis_default_value(), CORRELATION = qgisprocess:::qgis_default_value(), VARIANCE = qgisprocess:::qgis_default_value(), IDM = qgisprocess:::qgis_default_value(), SUM_AVERAGE = qgisprocess:::qgis_default_value(), SUM_ENTROPY = qgisprocess:::qgis_default_value(), SUM_VARIANCE = qgisprocess:::qgis_default_value(), ENTROPY = qgisprocess:::qgis_default_value(), DIF_VARIANCE = qgisprocess:::qgis_default_value(), DIF_ENTROPY = qgisprocess:::qgis_default_value(), MOC_1 = qgisprocess:::qgis_default_value(), MOC_2 = qgisprocess:::qgis_default_value(), DIRECTION = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), MAX_CATS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:texturalfeatures")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:texturalfeatures", `GRID` = GRID, `ASM` = ASM, `CONTRAST` = CONTRAST, `CORRELATION` = CORRELATION, `VARIANCE` = VARIANCE, `IDM` = IDM, `SUM_AVERAGE` = SUM_AVERAGE, `SUM_ENTROPY` = SUM_ENTROPY, `SUM_VARIANCE` = SUM_VARIANCE, `ENTROPY` = ENTROPY, `DIF_VARIANCE` = DIF_VARIANCE, `DIF_ENTROPY` = DIF_ENTROPY, `MOC_1` = MOC_1, `MOC_2` = MOC_2, `DIRECTION` = DIRECTION, `RADIUS` = RADIUS, `DISTANCE` = DISTANCE, `MAX_CATS` = MAX_CATS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:texturalfeatures", `GRID` = GRID, `ASM` = ASM, `CONTRAST` = CONTRAST, `CORRELATION` = CORRELATION, `VARIANCE` = VARIANCE, `IDM` = IDM, `SUM_AVERAGE` = SUM_AVERAGE, `SUM_ENTROPY` = SUM_ENTROPY, `SUM_VARIANCE` = SUM_VARIANCE, `ENTROPY` = ENTROPY, `DIF_VARIANCE` = DIF_VARIANCE, `DIF_ENTROPY` = DIF_ENTROPY, `MOC_1` = MOC_1, `MOC_2` = MOC_2, `DIRECTION` = DIRECTION, `RADIUS` = RADIUS, `DISTANCE` = DISTANCE, `MAX_CATS` = MAX_CATS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ASM")
  }
}