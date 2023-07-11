##' QGIS Algorithm provided by SAGA Next Gen Define georeference for grids (sagang:definegeoreferenceforgrids). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer REFERENCED: Referenced Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DEFINITION: Definition 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) cellsize and lower left cell coordinates 		- 1: (1) cellsize and upper left cell coordinates 		- 2: (2) lower left cell coordinates and left to right range 		- 3: (3) lower left cell coordinates and lower to upper range 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SIZE: Cellsize 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression XMIN: Left 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression XMAX: Right 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YMIN: Lower 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YMAX: Upper 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CELL_REF: Cell Reference 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) center 		- 1: (1) corner 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Define georeference for grids
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param REFERENCED `rasterDestination` - Referenced Grids. Path for new raster layer.
##' @param DEFINITION `enum`  of `("(0) cellsize and lower left cell coordinates", "(1) cellsize and upper left cell coordinates", "(2) lower left cell coordinates and left to right range", "(3) lower left cell coordinates and lower to upper range")` - Definition. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param XMIN `number` - Left. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param XMAX `number` - Right. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YMIN `number` - Lower. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YMAX `number` - Upper. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CELL_REF `enum`  of `("(0) center", "(1) corner")` - Cell Reference. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * REFERENCED - outputRaster - Referenced Grids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_definegeoreferenceforgrids <- function(GRIDS = qgisprocess:::qgis_default_value(), REFERENCED = qgisprocess:::qgis_default_value(), DEFINITION = qgisprocess:::qgis_default_value(), SIZE = qgisprocess:::qgis_default_value(), XMIN = qgisprocess:::qgis_default_value(), XMAX = qgisprocess:::qgis_default_value(), YMIN = qgisprocess:::qgis_default_value(), YMAX = qgisprocess:::qgis_default_value(), CELL_REF = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:definegeoreferenceforgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:definegeoreferenceforgrids", `GRIDS` = GRIDS, `REFERENCED` = REFERENCED, `DEFINITION` = DEFINITION, `SIZE` = SIZE, `XMIN` = XMIN, `XMAX` = XMAX, `YMIN` = YMIN, `YMAX` = YMAX, `CELL_REF` = CELL_REF,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:definegeoreferenceforgrids", `GRIDS` = GRIDS, `REFERENCED` = REFERENCED, `DEFINITION` = DEFINITION, `SIZE` = SIZE, `XMIN` = XMIN, `XMAX` = XMAX, `YMIN` = YMIN, `YMAX` = YMAX, `CELL_REF` = CELL_REF,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "REFERENCED")
  }
}