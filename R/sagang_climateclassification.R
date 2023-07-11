##' QGIS Algorithm provided by SAGA Next Gen Climate classification (sagang:climateclassification). ---------------- Arguments ----------------  T: Temperature 	Argument type:	multilayer P: Precipitation 	Argument type:	multilayer CLASSES: Climate Classification 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Classification 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Koeppen-Geiger 		- 1: (1) Koeppen-Geiger without As/Aw differentiation 		- 2: (2) Koeppen-Geiger after Peel et al. (2007) 		- 3: (3) Wissmann (1939) 		- 4: (4) Thornthwaite (1931) 		- 5: (5) Troll-Paffen 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Climate classification
##'
##' @param T `multilayer` - Temperature. .
##' @param P `multilayer` - Precipitation. .
##' @param CLASSES `rasterDestination` - Climate Classification. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Koeppen-Geiger", "(1) Koeppen-Geiger without As/Aw differentiation", "(2) Koeppen-Geiger after Peel et al. (2007)", "(3) Wissmann (1939)", "(4) Thornthwaite (1931)", "(5) Troll-Paffen")` - Classification. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLASSES - outputRaster - Climate Classification
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_climateclassification <- function(T = qgisprocess:::qgis_default_value(), P = qgisprocess:::qgis_default_value(), CLASSES = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:climateclassification")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:climateclassification", `T` = T, `P` = P, `CLASSES` = CLASSES, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:climateclassification", `T` = T, `P` = P, `CLASSES` = CLASSES, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLASSES")
  }
}