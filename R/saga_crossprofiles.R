##' QGIS Algorithm provided by SAGA Cross profiles (saga:crossprofiles)
##'
##' @title QGIS algorithm Cross profiles
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param DIST_LINE `number` - Profile Distance. A numeric value.
##' @param DIST_PROFILE `number` - Profile Length. A numeric value.
##' @param NUM_PROFILE `number` - Profile Samples. A numeric value.
##' @param PROFILES `vectorDestination` - Cross Profiles. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PROFILES - outputVector - Cross Profiles
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_crossprofiles <- function(DEM = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(), DIST_LINE = qgisprocess::qgis_default_value(), DIST_PROFILE = qgisprocess::qgis_default_value(), NUM_PROFILE = qgisprocess::qgis_default_value(), PROFILES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:crossprofiles",`DEM` = DEM, `LINES` = LINES, `DIST_LINE` = DIST_LINE, `DIST_PROFILE` = DIST_PROFILE, `NUM_PROFILE` = NUM_PROFILE, `PROFILES` = PROFILES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PROFILES")
  }
}