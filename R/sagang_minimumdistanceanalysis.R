##' QGIS Algorithm provided by SAGA Next Gen Minimum distance analysis (sagang:minimumdistanceanalysis). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer TABLE: Minimum Distance Analysis 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Minimum distance analysis
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param TABLE `vectorDestination` - Minimum Distance Analysis. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TABLE - outputVector - Minimum Distance Analysis
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_minimumdistanceanalysis <- function(POINTS = qgisprocess:::qgis_default_value(), TABLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:minimumdistanceanalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:minimumdistanceanalysis", `POINTS` = POINTS, `TABLE` = TABLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:minimumdistanceanalysis", `POINTS` = POINTS, `TABLE` = TABLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TABLE")
  }
}