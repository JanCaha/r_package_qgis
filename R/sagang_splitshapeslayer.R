##' QGIS Algorithm provided by SAGA Next Gen Split shapes layer (sagang:splitshapeslayer). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer CUTS: Tiles 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer EXTENT: Extent 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NX: Number of horizontal tiles 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NY: Number of vertical tiles 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) completely contained 		- 1: (1) intersects 		- 2: (2) center 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Split shapes layer
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param CUTS `vectorDestination` - Tiles. Path for new vector layer.
##' @param EXTENT `vectorDestination` - Extent. Path for new vector layer.
##' @param NX `number` - Number of horizontal tiles. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NY `number` - Number of vertical tiles. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) completely contained", "(1) intersects", "(2) center")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CUTS - outputVector - Tiles
##' * EXTENT - outputVector - Extent
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_splitshapeslayer <- function(SHAPES = qgisprocess:::qgis_default_value(), CUTS = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), NX = qgisprocess:::qgis_default_value(), NY = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:splitshapeslayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:splitshapeslayer", `SHAPES` = SHAPES, `CUTS` = CUTS, `EXTENT` = EXTENT, `NX` = NX, `NY` = NY, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:splitshapeslayer", `SHAPES` = SHAPES, `CUTS` = CUTS, `EXTENT` = EXTENT, `NX` = NX, `NY` = NY, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CUTS")
  }
}