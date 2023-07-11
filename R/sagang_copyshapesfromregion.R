##' QGIS Algorithm provided by SAGA Next Gen Copy shapes from region (sagang:copyshapesfromregion). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	multilayer CUT: Copy 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) completely contained 		- 1: (1) intersects 		- 2: (2) center 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EXTENT: Region 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) user defined 		- 1: (1) grid project 		- 2: (2) shapes layer extent 		- 3: (3) polygons 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' AX: Left 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BX: Right 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AY: Bottom 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BY: Top 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DX: Horizontal Range 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DY: Vertical Range 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SHAPES_EXT: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer OVERLAP: Minimum Overlap 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Copy shapes from region
##'
##' @param SHAPES `multilayer` - Shapes. .
##' @param CUT `vectorDestination` - Copy. Path for new vector layer.
##' @param METHOD `enum`  of `("(0) completely contained", "(1) intersects", "(2) center")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTENT `enum`  of `("(0) user defined", "(1) grid project", "(2) shapes layer extent", "(3) polygons")` - Region. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param AX `number` - Left. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BX `number` - Right. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AY `number` - Bottom. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BY `number` - Top. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DX `number` - Horizontal Range. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DY `number` - Vertical Range. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SHAPES_EXT `source` - Shapes. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param OVERLAP `number` - Minimum Overlap. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CUT - outputVector - Copy
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_copyshapesfromregion <- function(SHAPES = qgisprocess:::qgis_default_value(), CUT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), AX = qgisprocess:::qgis_default_value(), BX = qgisprocess:::qgis_default_value(), AY = qgisprocess:::qgis_default_value(), BY = qgisprocess:::qgis_default_value(), DX = qgisprocess:::qgis_default_value(), DY = qgisprocess:::qgis_default_value(), SHAPES_EXT = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), OVERLAP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:copyshapesfromregion")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:copyshapesfromregion", `SHAPES` = SHAPES, `CUT` = CUT, `METHOD` = METHOD, `EXTENT` = EXTENT, `AX` = AX, `BX` = BX, `AY` = AY, `BY` = BY, `DX` = DX, `DY` = DY, `SHAPES_EXT` = SHAPES_EXT, `POLYGONS` = POLYGONS, `OVERLAP` = OVERLAP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:copyshapesfromregion", `SHAPES` = SHAPES, `CUT` = CUT, `METHOD` = METHOD, `EXTENT` = EXTENT, `AX` = AX, `BX` = BX, `AY` = AY, `BY` = BY, `DX` = DX, `DY` = DY, `SHAPES_EXT` = SHAPES_EXT, `POLYGONS` = POLYGONS, `OVERLAP` = OVERLAP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CUT")
  }
}