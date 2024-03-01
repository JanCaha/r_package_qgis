##' QGIS Algorithm provided by SAGA Next Gen Remove overlap from virtual point cloud tiles (sagang:removeoverlapfromvirtualpointcloudtiles). ---------------- Arguments ----------------  FILENAME: Tile Info File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FILEPATH: Output Filepath 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Remove overlap from virtual point cloud tiles
##'
##' @param FILENAME `file` - Tile Info File. Path to a file.
##' @param FILEPATH `file` - Output Filepath. Path to a file.
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

sagang_removeoverlapfromvirtualpointcloudtiles <- function(FILENAME = qgisprocess:::qgis_default_value(), FILEPATH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:removeoverlapfromvirtualpointcloudtiles")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:removeoverlapfromvirtualpointcloudtiles", `FILENAME` = FILENAME, `FILEPATH` = FILEPATH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:removeoverlapfromvirtualpointcloudtiles", `FILENAME` = FILENAME, `FILEPATH` = FILEPATH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}