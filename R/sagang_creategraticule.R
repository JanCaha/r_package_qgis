##' QGIS Algorithm provided by SAGA Next Gen Create graticule (sagang:creategraticule). ---------------- Arguments ----------------  GRATICULE_LINE: Graticule 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer GRATICULE_RECT: Graticule 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TYPE: Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Lines 		- 1: (1) Rectangles 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EXTENT: Extent (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer DIVISION_X: Division Width 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DIVISION_Y: Division Height 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ALIGNMENT: Alignment 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) bottom-left 		- 1: (1) top-left 		- 2: (2) bottom-right 		- 3: (3) top-right 		- 4: (4) centered 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Create graticule
##'
##' @param GRATICULE_LINE `vectorDestination` - Graticule. Path for new vector layer.
##' @param GRATICULE_RECT `vectorDestination` - Graticule. Path for new vector layer.
##' @param TYPE `enum`  of `("(0) Lines", "(1) Rectangles")` - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTENT `source` - Extent. Path to a vector layer.
##' @param DIVISION_X `number` - Division Width. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DIVISION_Y `number` - Division Height. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ALIGNMENT `enum`  of `("(0) bottom-left", "(1) top-left", "(2) bottom-right", "(3) top-right", "(4) centered")` - Alignment. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRATICULE_LINE - outputVector - Graticule
##' * GRATICULE_RECT - outputVector - Graticule
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_creategraticule <- function(GRATICULE_LINE = qgisprocess:::qgis_default_value(), GRATICULE_RECT = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), DIVISION_X = qgisprocess:::qgis_default_value(), DIVISION_Y = qgisprocess:::qgis_default_value(), ALIGNMENT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:creategraticule")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:creategraticule", `GRATICULE_LINE` = GRATICULE_LINE, `GRATICULE_RECT` = GRATICULE_RECT, `TYPE` = TYPE, `EXTENT` = EXTENT, `DIVISION_X` = DIVISION_X, `DIVISION_Y` = DIVISION_Y, `ALIGNMENT` = ALIGNMENT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:creategraticule", `GRATICULE_LINE` = GRATICULE_LINE, `GRATICULE_RECT` = GRATICULE_RECT, `TYPE` = TYPE, `EXTENT` = EXTENT, `DIVISION_X` = DIVISION_X, `DIVISION_Y` = DIVISION_Y, `ALIGNMENT` = ALIGNMENT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRATICULE_LINE")
  }
}