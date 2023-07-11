##' QGIS Algorithm provided by SAGA Next Gen Create tileshape from virtual point cloud (sagang:createtileshapefromvirtualpointcloud). ---------------- Arguments ----------------  FILENAME: Filename 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file TILE_SHP: Tileshape 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Create tileshape from virtual point cloud
##'
##' @param FILENAME `file` - Filename. Path to a file.
##' @param TILE_SHP `vectorDestination` - Tileshape. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TILE_SHP - outputVector - Tileshape
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_createtileshapefromvirtualpointcloud <- function(FILENAME = qgisprocess:::qgis_default_value(), TILE_SHP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:createtileshapefromvirtualpointcloud")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:createtileshapefromvirtualpointcloud", `FILENAME` = FILENAME, `TILE_SHP` = TILE_SHP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:createtileshapefromvirtualpointcloud", `FILENAME` = FILENAME, `TILE_SHP` = TILE_SHP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TILE_SHP")
  }
}