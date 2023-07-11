##' QGIS Algorithm provided by SAGA Next Gen Terrain surface classification (iwahashi and pike) (sagang:terrainsurfaceclassificationiwahashiandpike). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SLOPE: Slope (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONVEXITY: Convexity (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONV_RECALC: Recalculate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TEXTURE: Texture (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TEXT_RECALC: Recalculate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LANDFORMS: Landforms 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TYPE: Number of Classes 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) 8 		- 1: (1) 12 		- 2: (2) 16 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONV_SCALE: Scale (Cells) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONV_KERNEL: Laplacian Filter Kernel 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) four-neighbourhood 		- 1: (1) eight-neihbourhood 		- 2: (2) eight-neihbourhood (distance based weighting) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONV_TYPE: Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) convexity 		- 1: (1) concavity 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONV_EPSILON: Flat Area Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TEXT_SCALE: Scale (Cells) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TEXT_EPSILON: Flat Area Threshold 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Terrain surface classification (iwahashi and pike)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param CONVEXITY `raster` - Convexity. Path to a raster layer.
##' @param CONV_RECALC `boolean` - Recalculate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TEXTURE `raster` - Texture. Path to a raster layer.
##' @param TEXT_RECALC `boolean` - Recalculate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LANDFORMS `rasterDestination` - Landforms. Path for new raster layer.
##' @param TYPE `enum`  of `("(0) 8", "(1) 12", "(2) 16")` - Number of Classes. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONV_SCALE `number` - Scale (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONV_KERNEL `enum`  of `("(0) four-neighbourhood", "(1) eight-neihbourhood", "(2) eight-neihbourhood (distance based weighting)")` - Laplacian Filter Kernel. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONV_TYPE `enum`  of `("(0) convexity", "(1) concavity")` - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONV_EPSILON `number` - Flat Area Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TEXT_SCALE `number` - Scale (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TEXT_EPSILON `number` - Flat Area Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LANDFORMS - outputRaster - Landforms
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_terrainsurfaceclassificationiwahashiandpike <- function(DEM = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(), CONVEXITY = qgisprocess:::qgis_default_value(), CONV_RECALC = qgisprocess:::qgis_default_value(), TEXTURE = qgisprocess:::qgis_default_value(), TEXT_RECALC = qgisprocess:::qgis_default_value(), LANDFORMS = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), CONV_SCALE = qgisprocess:::qgis_default_value(), CONV_KERNEL = qgisprocess:::qgis_default_value(), CONV_TYPE = qgisprocess:::qgis_default_value(), CONV_EPSILON = qgisprocess:::qgis_default_value(), TEXT_SCALE = qgisprocess:::qgis_default_value(), TEXT_EPSILON = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:terrainsurfaceclassificationiwahashiandpike")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:terrainsurfaceclassificationiwahashiandpike", `DEM` = DEM, `SLOPE` = SLOPE, `CONVEXITY` = CONVEXITY, `CONV_RECALC` = CONV_RECALC, `TEXTURE` = TEXTURE, `TEXT_RECALC` = TEXT_RECALC, `LANDFORMS` = LANDFORMS, `TYPE` = TYPE, `CONV_SCALE` = CONV_SCALE, `CONV_KERNEL` = CONV_KERNEL, `CONV_TYPE` = CONV_TYPE, `CONV_EPSILON` = CONV_EPSILON, `TEXT_SCALE` = TEXT_SCALE, `TEXT_EPSILON` = TEXT_EPSILON,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:terrainsurfaceclassificationiwahashiandpike", `DEM` = DEM, `SLOPE` = SLOPE, `CONVEXITY` = CONVEXITY, `CONV_RECALC` = CONV_RECALC, `TEXTURE` = TEXTURE, `TEXT_RECALC` = TEXT_RECALC, `LANDFORMS` = LANDFORMS, `TYPE` = TYPE, `CONV_SCALE` = CONV_SCALE, `CONV_KERNEL` = CONV_KERNEL, `CONV_TYPE` = CONV_TYPE, `CONV_EPSILON` = CONV_EPSILON, `TEXT_SCALE` = TEXT_SCALE, `TEXT_EPSILON` = TEXT_EPSILON,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LANDFORMS")
  }
}