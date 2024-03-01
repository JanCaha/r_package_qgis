##' QGIS Algorithm provided by SAGA Next Gen Create virtual raster (vrt) (sagang:createvirtualrastervrt). ---------------- Arguments ----------------  FILES: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FILE_LIST: Input File List 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file VRT_NAME: VRT Filename 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file RESAMPLING: Resampling 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) nearest 		- 1: (1) bilinear 		- 2: (2) cubic 		- 3: (3) cubic spline 		- 4: (4) lanczos 		- 5: (5) average 		- 6: (6) mode 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RESOLUTION: Resolution 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) highest 		- 1: (1) lowest 		- 2: (2) average 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Create virtual raster (vrt)
##'
##' @param FILES `file` - Files. Path to a file.
##' @param FILE_LIST `file` - Input File List. Path to a file.
##' @param VRT_NAME `file` - VRT Filename. Path to a file.
##' @param RESAMPLING `enum`  of `("(0) nearest", "(1) bilinear", "(2) cubic", "(3) cubic spline", "(4) lanczos", "(5) average", "(6) mode")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESOLUTION `enum`  of `("(0) highest", "(1) lowest", "(2) average")` - Resolution. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

sagang_createvirtualrastervrt <- function(FILES = qgisprocess:::qgis_default_value(), FILE_LIST = qgisprocess:::qgis_default_value(), VRT_NAME = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), RESOLUTION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:createvirtualrastervrt")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:createvirtualrastervrt", `FILES` = FILES, `FILE_LIST` = FILE_LIST, `VRT_NAME` = VRT_NAME, `RESAMPLING` = RESAMPLING, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:createvirtualrastervrt", `FILES` = FILES, `FILE_LIST` = FILE_LIST, `VRT_NAME` = VRT_NAME, `RESAMPLING` = RESAMPLING, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}