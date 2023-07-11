##' QGIS Algorithm provided by SAGA Next Gen Gradient vectors from direction and length (sagang:gradientvectorsfromdirectionandlength). ---------------- Arguments ----------------  DIR: Direction 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LEN: Length 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VECTORS: Gradient Vectors 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer STEP: Step 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AGGR: Aggregation 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) nearest neighbour 		- 1: (1) mean value 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' STYLE: Style 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) simple line 		- 1: (1) arrow 		- 2: (2) arrow (centered to cell) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Gradient vectors from direction and length
##'
##' @param DIR `raster` - Direction. Path to a raster layer.
##' @param LEN `raster` - Length. Path to a raster layer.
##' @param VECTORS `vectorDestination` - Gradient Vectors. Path for new vector layer.
##' @param STEP `number` - Step. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AGGR `enum`  of `("(0) nearest neighbour", "(1) mean value")` - Aggregation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param STYLE `enum`  of `("(0) simple line", "(1) arrow", "(2) arrow (centered to cell)")` - Style. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * VECTORS - outputVector - Gradient Vectors
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gradientvectorsfromdirectionandlength <- function(DIR = qgisprocess:::qgis_default_value(), LEN = qgisprocess:::qgis_default_value(), VECTORS = qgisprocess:::qgis_default_value(), STEP = qgisprocess:::qgis_default_value(), AGGR = qgisprocess:::qgis_default_value(), STYLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gradientvectorsfromdirectionandlength")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gradientvectorsfromdirectionandlength", `DIR` = DIR, `LEN` = LEN, `VECTORS` = VECTORS, `STEP` = STEP, `AGGR` = AGGR, `STYLE` = STYLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gradientvectorsfromdirectionandlength", `DIR` = DIR, `LEN` = LEN, `VECTORS` = VECTORS, `STEP` = STEP, `AGGR` = AGGR, `STYLE` = STYLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "VECTORS")
  }
}