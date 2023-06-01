##' QGIS Algorithm provided by SAGA Raster skeletonization (saga:rasterskeletonization)
##'
##' @title QGIS algorithm Raster skeletonization
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Standard", "[1] Hilditch's Algorithm", "[2] Channel Skeleton")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INIT_METHOD `enum`  of `("[0] Less than", "[1] Greater than")` - Initialisation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INIT_THRESHOLD `number` - Threshold (Init.). A numeric value.
##' @param CONVERGENCE `number` - Convergence. A numeric value.
##' @param RESULT `rasterDestination` - Skeleton. Path for new raster layer.
##' @param VECTOR `vectorDestination` - Skeleton. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Skeleton
##' * VECTOR - outputVector - Skeleton
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_rasterskeletonization <- function(INPUT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), INIT_METHOD = qgisprocess:::qgis_default_value(), INIT_THRESHOLD = qgisprocess:::qgis_default_value(), CONVERGENCE = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), VECTOR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rasterskeletonization")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rasterskeletonization", `INPUT` = INPUT, `METHOD` = METHOD, `INIT_METHOD` = INIT_METHOD, `INIT_THRESHOLD` = INIT_THRESHOLD, `CONVERGENCE` = CONVERGENCE, `RESULT` = RESULT, `VECTOR` = VECTOR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rasterskeletonization", `INPUT` = INPUT, `METHOD` = METHOD, `INIT_METHOD` = INIT_METHOD, `INIT_THRESHOLD` = INIT_THRESHOLD, `CONVERGENCE` = CONVERGENCE, `RESULT` = RESULT, `VECTOR` = VECTOR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}