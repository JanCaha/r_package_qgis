##' QGIS Algorithm provided by SAGA Next Gen Close gaps with spline (sagang:closegapswithspline). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MASK: Mask (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MAXGAPCELLS: Only Process Gaps with Less Cells 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CLOSED: Closed Gaps Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAXPOINTS: Maximum Points 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LOCALPOINTS: Number of Points for Local Interpolation 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENDED: Extended Neighourhood 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NEIGHBOURS: Neighbourhood 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Neumann 		- 1: (1) Moore 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RADIUS: Radius (Cells) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RELAXATION: Relaxation 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Close gaps with spline
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param MAXGAPCELLS `number` - Only Process Gaps with Less Cells. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CLOSED `rasterDestination` - Closed Gaps Grid. Path for new raster layer.
##' @param MAXPOINTS `number` - Maximum Points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LOCALPOINTS `number` - Number of Points for Local Interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENDED `boolean` - Extended Neighourhood. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NEIGHBOURS `enum`  of `("(0) Neumann", "(1) Moore")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RELAXATION `number` - Relaxation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLOSED - outputRaster - Closed Gaps Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_closegapswithspline <- function(GRID = qgisprocess:::qgis_default_value(), MASK = qgisprocess:::qgis_default_value(), MAXGAPCELLS = qgisprocess:::qgis_default_value(), CLOSED = qgisprocess:::qgis_default_value(), MAXPOINTS = qgisprocess:::qgis_default_value(), LOCALPOINTS = qgisprocess:::qgis_default_value(), EXTENDED = qgisprocess:::qgis_default_value(), NEIGHBOURS = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), RELAXATION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:closegapswithspline")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:closegapswithspline", `GRID` = GRID, `MASK` = MASK, `MAXGAPCELLS` = MAXGAPCELLS, `CLOSED` = CLOSED, `MAXPOINTS` = MAXPOINTS, `LOCALPOINTS` = LOCALPOINTS, `EXTENDED` = EXTENDED, `NEIGHBOURS` = NEIGHBOURS, `RADIUS` = RADIUS, `RELAXATION` = RELAXATION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:closegapswithspline", `GRID` = GRID, `MASK` = MASK, `MAXGAPCELLS` = MAXGAPCELLS, `CLOSED` = CLOSED, `MAXPOINTS` = MAXPOINTS, `LOCALPOINTS` = LOCALPOINTS, `EXTENDED` = EXTENDED, `NEIGHBOURS` = NEIGHBOURS, `RADIUS` = RADIUS, `RELAXATION` = RELAXATION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLOSED")
  }
}