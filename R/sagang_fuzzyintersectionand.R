##' QGIS Algorithm provided by SAGA Next Gen Fuzzy intersection (and) (sagang:fuzzyintersectionand). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer AND: Intersection 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TYPE: Operator Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) min(a, b) (non-interactive) 		- 1: (1) a * b 		- 2: (2) max(0, a + b - 1) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Fuzzy intersection (and)
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param AND `rasterDestination` - Intersection. Path for new raster layer.
##' @param TYPE `enum`  of `("(0) min(a, b) (non-interactive)", "(1) a * b", "(2) max(0, a + b - 1)")` - Operator Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * AND - outputRaster - Intersection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_fuzzyintersectionand <- function(GRIDS = qgisprocess:::qgis_default_value(), AND = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:fuzzyintersectionand")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:fuzzyintersectionand", `GRIDS` = GRIDS, `AND` = AND, `TYPE` = TYPE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:fuzzyintersectionand", `GRIDS` = GRIDS, `AND` = AND, `TYPE` = TYPE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "AND")
  }
}