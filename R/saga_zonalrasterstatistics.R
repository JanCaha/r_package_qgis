##' QGIS Algorithm provided by SAGA Zonal raster statistics (saga:zonalrasterstatistics)
##'
##' @title QGIS algorithm Zonal raster statistics
##'
##' @param ZONES `raster` - Zone Grid. Path to a raster layer.
##' @param CATLIST `multilayer` - Categorial Grids. .
##' @param STATLIST `multilayer` - Grids to analyze. .
##' @param ASPECT `raster` - Aspect. Path to a raster layer.
##' @param SHORTNAMES `boolean` - Short Field Names. 1 for true/yes. 0 for false/no.
##' @param OUTTAB `vectorDestination` - Zonal Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTTAB - outputVector - Zonal Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_zonalrasterstatistics <- function(ZONES = qgisprocess::qgis_default_value(), CATLIST = qgisprocess::qgis_default_value(), STATLIST = qgisprocess::qgis_default_value(), ASPECT = qgisprocess::qgis_default_value(), SHORTNAMES = qgisprocess::qgis_default_value(), OUTTAB = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:zonalrasterstatistics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:zonalrasterstatistics", `ZONES` = ZONES, `CATLIST` = CATLIST, `STATLIST` = STATLIST, `ASPECT` = ASPECT, `SHORTNAMES` = SHORTNAMES, `OUTTAB` = OUTTAB,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:zonalrasterstatistics", `ZONES` = ZONES, `CATLIST` = CATLIST, `STATLIST` = STATLIST, `ASPECT` = ASPECT, `SHORTNAMES` = SHORTNAMES, `OUTTAB` = OUTTAB,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTTAB")
  }
}