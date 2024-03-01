##' QGIS Algorithm provided by SAGA Next Gen Create virtual point cloud dataset (sagang:createvirtualpointclouddataset). ---------------- Arguments ----------------  FILES: Input Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file INPUT_FILE_LIST: Input File List 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FILENAME: Filename 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file METHOD_PATHS: File Paths 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) absolute 		- 1: (1) relative 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' USE_HEADER: Use Header File 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Create virtual point cloud dataset
##'
##' @param FILES `file` - Input Files. Path to a file.
##' @param INPUT_FILE_LIST `file` - Input File List. Path to a file.
##' @param FILENAME `file` - Filename. Path to a file.
##' @param METHOD_PATHS `enum`  of `("(0) absolute", "(1) relative")` - File Paths. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param USE_HEADER `boolean` - Use Header File. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_createvirtualpointclouddataset <- function(FILES = qgisprocess:::qgis_default_value(), INPUT_FILE_LIST = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(), METHOD_PATHS = qgisprocess:::qgis_default_value(), USE_HEADER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:createvirtualpointclouddataset")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:createvirtualpointclouddataset", `FILES` = FILES, `INPUT_FILE_LIST` = INPUT_FILE_LIST, `FILENAME` = FILENAME, `METHOD_PATHS` = METHOD_PATHS, `USE_HEADER` = USE_HEADER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:createvirtualpointclouddataset", `FILES` = FILES, `INPUT_FILE_LIST` = INPUT_FILE_LIST, `FILENAME` = FILENAME, `METHOD_PATHS` = METHOD_PATHS, `USE_HEADER` = USE_HEADER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}