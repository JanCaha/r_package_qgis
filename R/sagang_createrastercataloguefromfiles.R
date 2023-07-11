##' QGIS Algorithm provided by SAGA Next Gen Create raster catalogue from files (sagang:createrastercataloguefromfiles). ---------------- Arguments ----------------  CATALOGUE: Raster Catalogue 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILES: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Create raster catalogue from files
##'
##' @param CATALOGUE `vectorDestination` - Raster Catalogue. Path for new vector layer.
##' @param FILES `file` - Files. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CATALOGUE - outputVector - Raster Catalogue
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_createrastercataloguefromfiles <- function(CATALOGUE = qgisprocess:::qgis_default_value(), FILES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:createrastercataloguefromfiles")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:createrastercataloguefromfiles", `CATALOGUE` = CATALOGUE, `FILES` = FILES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:createrastercataloguefromfiles", `CATALOGUE` = CATALOGUE, `FILES` = FILES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CATALOGUE")
  }
}