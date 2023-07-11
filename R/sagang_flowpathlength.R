##' QGIS Algorithm provided by SAGA Next Gen Flow path length (sagang:flowpathlength). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SEED: Seeds (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LENGTH: Flow Path Length 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SEEDS_ONLY: Seeds Only 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Flow Routing Algorithm 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 (D8) 		- 1: (1) Multiple Flow Direction (FD8) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONVERGENCE: Convergence (FD8) 	Default value:	1.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Flow path length
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SEED `raster` - Seeds. Path to a raster layer.
##' @param LENGTH `rasterDestination` - Flow Path Length. Path for new raster layer.
##' @param SEEDS_ONLY `boolean` - Seeds Only. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) Deterministic 8 (D8)", "(1) Multiple Flow Direction (FD8)")` - Flow Routing Algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONVERGENCE `number` - Convergence (FD8). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LENGTH - outputRaster - Flow Path Length
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_flowpathlength <- function(ELEVATION = qgisprocess:::qgis_default_value(), SEED = qgisprocess:::qgis_default_value(), LENGTH = qgisprocess:::qgis_default_value(), SEEDS_ONLY = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), CONVERGENCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:flowpathlength")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:flowpathlength", `ELEVATION` = ELEVATION, `SEED` = SEED, `LENGTH` = LENGTH, `SEEDS_ONLY` = SEEDS_ONLY, `METHOD` = METHOD, `CONVERGENCE` = CONVERGENCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:flowpathlength", `ELEVATION` = ELEVATION, `SEED` = SEED, `LENGTH` = LENGTH, `SEEDS_ONLY` = SEEDS_ONLY, `METHOD` = METHOD, `CONVERGENCE` = CONVERGENCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LENGTH")
  }
}