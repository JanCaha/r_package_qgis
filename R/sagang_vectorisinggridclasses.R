##' QGIS Algorithm provided by SAGA Next Gen Vectorising grid classes (sagang:vectorisinggridclasses). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer POLYGONS: Polygons 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CLASS_ALL: Class Selection 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) one single class specified by class identifier 		- 1: (1) all classes 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CLASS_ID: Class Identifier 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SPLIT: Vectorised class as... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) one single (multi-)polygon object 		- 1: (1) each island as separated polygon 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' ALLVERTICES: Keep Vertices on Straight Lines 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Vectorising grid classes
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param POLYGONS `vectorDestination` - Polygons. Path for new vector layer.
##' @param CLASS_ALL `enum`  of `("(0) one single class specified by class identifier", "(1) all classes")` - Class Selection. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CLASS_ID `number` - Class Identifier. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SPLIT `enum`  of `("(0) one single (multi-)polygon object", "(1) each island as separated polygon")` - Vectorised class as.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ALLVERTICES `boolean` - Keep Vertices on Straight Lines. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POLYGONS - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_vectorisinggridclasses <- function(GRID = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), CLASS_ALL = qgisprocess:::qgis_default_value(), CLASS_ID = qgisprocess:::qgis_default_value(), SPLIT = qgisprocess:::qgis_default_value(), ALLVERTICES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:vectorisinggridclasses")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:vectorisinggridclasses", `GRID` = GRID, `POLYGONS` = POLYGONS, `CLASS_ALL` = CLASS_ALL, `CLASS_ID` = CLASS_ID, `SPLIT` = SPLIT, `ALLVERTICES` = ALLVERTICES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:vectorisinggridclasses", `GRID` = GRID, `POLYGONS` = POLYGONS, `CLASS_ALL` = CLASS_ALL, `CLASS_ID` = CLASS_ID, `SPLIT` = SPLIT, `ALLVERTICES` = ALLVERTICES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POLYGONS")
  }
}