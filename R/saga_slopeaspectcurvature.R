##' QGIS Algorithm provided by SAGA Slope, aspect, curvature (saga:slopeaspectcurvature)
##'
##' @title QGIS algorithm Slope, aspect, curvature
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Maximum Slope (Travis et al. 1975)", "[1] Maximum Triangle Slope (Tarboton 1997)", "[2] Least Squares Fitted Plane (Horn 1981, Costa-Cabral & Burgess 1996)", "[3] 6 parameter 2nd order polynom (Evans 1979)", "[4] 6 parameter 2nd order polynom (Heerdegen & Beran 1982)", "[5] 6 parameter 2nd order polynom (Bauer, Rohdenburg, Bork 1985)", "[6] 9 parameter 2nd order polynom (Zevenbergen & Thorne 1987)", "[7]10 parameter 3rd order polynom (Haralick 1983)")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param UNIT_SLOPE `enum`  of `("[0] radians", "[1] degree", "[2] percent")` - Slope Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param UNIT_ASPECT `enum`  of `("[0] radians", "[1] degree")` - Aspect Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SLOPE `rasterDestination` - Slope. Path for new raster layer.
##' @param ASPECT `rasterDestination` - Aspect. Path for new raster layer.
##' @param C_GENE `rasterDestination` - General Curvature. Path for new raster layer.
##' @param C_PLAN `rasterDestination` - Plan Curvature. Path for new raster layer.
##' @param C_PROF `rasterDestination` - Profile Curvature. Path for new raster layer.
##' @param C_TANG `rasterDestination` - Tangential Curvature. Path for new raster layer.
##' @param C_LONG `rasterDestination` - Longitudinal Curvature. Path for new raster layer.
##' @param C_CROS `rasterDestination` - Cross-Sectional Curvature. Path for new raster layer.
##' @param C_MINI `rasterDestination` - Minimal Curvature. Path for new raster layer.
##' @param C_MAXI `rasterDestination` - Maximal Curvature. Path for new raster layer.
##' @param C_TOTA `rasterDestination` - Total Curvature. Path for new raster layer.
##' @param C_ROTO `rasterDestination` - Flow-Line Curvature. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SLOPE - outputRaster - Slope
##' * ASPECT - outputRaster - Aspect
##' * C_GENE - outputRaster - General Curvature
##' * C_PLAN - outputRaster - Plan Curvature
##' * C_PROF - outputRaster - Profile Curvature
##' * C_TANG - outputRaster - Tangential Curvature
##' * C_LONG - outputRaster - Longitudinal Curvature
##' * C_CROS - outputRaster - Cross
##' * C_MINI - outputRaster - Minimal Curvature
##' * C_MAXI - outputRaster - Maximal Curvature
##' * C_TOTA - outputRaster - Total Curvature
##' * C_ROTO - outputRaster - Flow
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_slopeaspectcurvature <- function(ELEVATION = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), UNIT_SLOPE = qgisprocess::qgis_default_value(), UNIT_ASPECT = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(), ASPECT = qgisprocess::qgis_default_value(), C_GENE = qgisprocess::qgis_default_value(), C_PLAN = qgisprocess::qgis_default_value(), C_PROF = qgisprocess::qgis_default_value(), C_TANG = qgisprocess::qgis_default_value(), C_LONG = qgisprocess::qgis_default_value(), C_CROS = qgisprocess::qgis_default_value(), C_MINI = qgisprocess::qgis_default_value(), C_MAXI = qgisprocess::qgis_default_value(), C_TOTA = qgisprocess::qgis_default_value(), C_ROTO = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:slopeaspectcurvature",`ELEVATION` = ELEVATION, `METHOD` = METHOD, `UNIT_SLOPE` = UNIT_SLOPE, `UNIT_ASPECT` = UNIT_ASPECT, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `C_GENE` = C_GENE, `C_PLAN` = C_PLAN, `C_PROF` = C_PROF, `C_TANG` = C_TANG, `C_LONG` = C_LONG, `C_CROS` = C_CROS, `C_MINI` = C_MINI, `C_MAXI` = C_MAXI, `C_TOTA` = C_TOTA, `C_ROTO` = C_ROTO,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SLOPE")
}
}