##' QGIS Algorithm provided by SAGA Next Gen Create random points (sagang:createrandompoints). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer EXTENT: Target Area 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) user defined 		- 1: (1) grid system 		- 2: (2) shapes extent 		- 3: (3) polygons 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SHAPES: Shapes Extent 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer XMIN: Left 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression XMAX: Right 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YMIN: Bottom 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression YMAX: Top 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NX: Columns 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NY: Rows 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BUFFER: Buffer 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COUNT: Number of Points 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DISTRIBUTE: Number for... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) all polygons 		- 1: (1) each polygon 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' ITERATIONS: Iterations 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DISTANCE: Distance 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Create random points
##'
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param EXTENT `enum`  of `("(0) user defined", "(1) grid system", "(2) shapes extent", "(3) polygons")` - Target Area. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SHAPES `source` - Shapes Extent. Path to a vector layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param XMIN `number` - Left. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param XMAX `number` - Right. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YMIN `number` - Bottom. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YMAX `number` - Top. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NX `number` - Columns. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NY `number` - Rows. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BUFFER `number` - Buffer. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COUNT `number` - Number of Points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTRIBUTE `enum`  of `("(0) all polygons", "(1) each polygon")` - Number for.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ITERATIONS `number` - Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTANCE `number` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_createrandompoints <- function(POINTS = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), SHAPES = qgisprocess:::qgis_default_value(), POLYGONS = qgisprocess:::qgis_default_value(), XMIN = qgisprocess:::qgis_default_value(), XMAX = qgisprocess:::qgis_default_value(), YMIN = qgisprocess:::qgis_default_value(), YMAX = qgisprocess:::qgis_default_value(), NX = qgisprocess:::qgis_default_value(), NY = qgisprocess:::qgis_default_value(), BUFFER = qgisprocess:::qgis_default_value(), COUNT = qgisprocess:::qgis_default_value(), DISTRIBUTE = qgisprocess:::qgis_default_value(), ITERATIONS = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:createrandompoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:createrandompoints", `POINTS` = POINTS, `EXTENT` = EXTENT, `SHAPES` = SHAPES, `POLYGONS` = POLYGONS, `XMIN` = XMIN, `XMAX` = XMAX, `YMIN` = YMIN, `YMAX` = YMAX, `NX` = NX, `NY` = NY, `BUFFER` = BUFFER, `COUNT` = COUNT, `DISTRIBUTE` = DISTRIBUTE, `ITERATIONS` = ITERATIONS, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:createrandompoints", `POINTS` = POINTS, `EXTENT` = EXTENT, `SHAPES` = SHAPES, `POLYGONS` = POLYGONS, `XMIN` = XMIN, `XMAX` = XMAX, `YMIN` = YMIN, `YMAX` = YMAX, `NX` = NX, `NY` = NY, `BUFFER` = BUFFER, `COUNT` = COUNT, `DISTRIBUTE` = DISTRIBUTE, `ITERATIONS` = ITERATIONS, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}