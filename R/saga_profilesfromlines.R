##' QGIS Algorithm provided by SAGA Profiles from lines (saga:profilesfromlines)
##'
##' @title QGIS algorithm Profiles from lines
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param VALUES `multilayer` - Values. .
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param NAME `field` - Name. The name of an existing field. ; delimited list of existing field names.
##' @param SPLIT `boolean` - Each Line as new Profile. 1 for true/yes. 0 for false/no.
##' @param PROFILE `vectorDestination` - Profiles. Path for new vector layer.
##' @param PROFILES `vectorDestination` - Profiles. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PROFILE - outputVector - Profiles
##' * PROFILES - outputVector - Profiles
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_profilesfromlines <- function(DEM = qgisprocess::qgis_default_value(), VALUES = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(), NAME = qgisprocess::qgis_default_value(), SPLIT = qgisprocess::qgis_default_value(), PROFILE = qgisprocess::qgis_default_value(), PROFILES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:profilesfromlines",`DEM` = DEM, `VALUES` = VALUES, `LINES` = LINES, `NAME` = NAME, `SPLIT` = SPLIT, `PROFILE` = PROFILE, `PROFILES` = PROFILES,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PROFILE")
}
}