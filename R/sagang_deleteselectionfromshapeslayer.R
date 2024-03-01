##' QGIS Algorithm provided by SAGA Next Gen Delete selection from shapes layer (sagang:deleteselectionfromshapeslayer). ---------------- Arguments ----------------  INPUT: Input 	Argument type:	source 	Acceptable values: 		- Path to a vector layer
##'
##' @title QGIS algorithm - Delete selection from shapes layer
##'
##' @param INPUT `source` - Input. Path to a vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_deleteselectionfromshapeslayer <- function(INPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:deleteselectionfromshapeslayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:deleteselectionfromshapeslayer", `INPUT` = INPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:deleteselectionfromshapeslayer", `INPUT` = INPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}