##' QGIS Algorithm provided by SAGA Next Gen Categorical coincidence (sagang:categoricalcoincidence). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer CATEGORIES: Number of Categories 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer COINCIDENCE: Coincidence 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAJ_COUNT: Dominance of Majority 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAJ_VALUE: Value of Majority 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RADIUS: Radius (Cells) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Categorical coincidence
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param CATEGORIES `rasterDestination` - Number of Categories. Path for new raster layer.
##' @param COINCIDENCE `rasterDestination` - Coincidence. Path for new raster layer.
##' @param MAJ_COUNT `rasterDestination` - Dominance of Majority. Path for new raster layer.
##' @param MAJ_VALUE `rasterDestination` - Value of Majority. Path for new raster layer.
##' @param RADIUS `number` - Radius (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CATEGORIES - outputRaster - Number of Categories
##' * COINCIDENCE - outputRaster - Coincidence
##' * MAJ_COUNT - outputRaster - Dominance of Majority
##' * MAJ_VALUE - outputRaster - Value of Majority
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_categoricalcoincidence <- function(GRIDS = qgisprocess:::qgis_default_value(), CATEGORIES = qgisprocess:::qgis_default_value(), COINCIDENCE = qgisprocess:::qgis_default_value(), MAJ_COUNT = qgisprocess:::qgis_default_value(), MAJ_VALUE = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:categoricalcoincidence")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:categoricalcoincidence", `GRIDS` = GRIDS, `CATEGORIES` = CATEGORIES, `COINCIDENCE` = COINCIDENCE, `MAJ_COUNT` = MAJ_COUNT, `MAJ_VALUE` = MAJ_VALUE, `RADIUS` = RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:categoricalcoincidence", `GRIDS` = GRIDS, `CATEGORIES` = CATEGORIES, `COINCIDENCE` = COINCIDENCE, `MAJ_COUNT` = MAJ_COUNT, `MAJ_VALUE` = MAJ_VALUE, `RADIUS` = RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CATEGORIES")
  }
}