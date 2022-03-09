##' QGIS Algorithm provided by SAGA Categorical coincidence (saga:categoricalcoincidence)
##'
##' @title QGIS algorithm Categorical coincidence
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param CATEGORIES `rasterDestination` - Number of Categories. Path for new raster layer.
##' @param COINCIDENCE `rasterDestination` - Coincidence. Path for new raster layer.
##' @param MAJ_COUNT `rasterDestination` - Dominance of Majority. Path for new raster layer.
##' @param MAJ_VALUE `rasterDestination` - Value of Majority. Path for new raster layer.
##' @param RADIUS `number` - Radius (Cells). A numeric value.
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
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_categoricalcoincidence <- function(GRIDS = qgisprocess::qgis_default_value(), CATEGORIES = qgisprocess::qgis_default_value(), COINCIDENCE = qgisprocess::qgis_default_value(), MAJ_COUNT = qgisprocess::qgis_default_value(), MAJ_VALUE = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:categoricalcoincidence")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:categoricalcoincidence", `GRIDS` = GRIDS, `CATEGORIES` = CATEGORIES, `COINCIDENCE` = COINCIDENCE, `MAJ_COUNT` = MAJ_COUNT, `MAJ_VALUE` = MAJ_VALUE, `RADIUS` = RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:categoricalcoincidence", `GRIDS` = GRIDS, `CATEGORIES` = CATEGORIES, `COINCIDENCE` = COINCIDENCE, `MAJ_COUNT` = MAJ_COUNT, `MAJ_VALUE` = MAJ_VALUE, `RADIUS` = RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CATEGORIES")
  }
}