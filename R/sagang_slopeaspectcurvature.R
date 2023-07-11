##' QGIS Algorithm provided by SAGA Next Gen Slope, aspect, curvature (sagang:slopeaspectcurvature). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SLOPE: Slope 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ASPECT: Aspect 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_GENE: General Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_PROF: Profile Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_PLAN: Plan Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_TANG: Tangential Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_LONG: Longitudinal Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_CROS: Cross-Sectional Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_MINI: Minimal Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_MAXI: Maximal Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_TOTA: Total Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer C_ROTO: Flow Line Curvature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	6 	Argument type:	enum 	Available values: 		- 0: (0) maximum slope (Travis et al. 1975) 		- 1: (1) maximum triangle slope (Tarboton 1997) 		- 2: (2) least squares fitted plane (Horn 1981, Costa-Cabral & Burgess 1996) 		- 3: (3) 6 parameter 2nd order polynom (Evans 1979) 		- 4: (4) 6 parameter 2nd order polynom (Heerdegen & Beran 1982) 		- 5: (5) 6 parameter 2nd order polynom (Bauer, Rohdenburg, Bork 1985) 		- 6: (6) 9 parameter 2nd order polynom (Zevenbergen & Thorne 1987) 		- 7: (7) 10 parameter 3rd order polynom (Haralick 1983) 		- 8: (8) 10 parameter 3rd order polynom (Florinsky 2009) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' UNIT_SLOPE: Unit 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) radians 		- 1: (1) degree 		- 2: (2) percent rise 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' UNIT_ASPECT: Unit 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) radians 		- 1: (1) degree 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Slope, aspect, curvature
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SLOPE `rasterDestination` - Slope. Path for new raster layer.
##' @param ASPECT `rasterDestination` - Aspect. Path for new raster layer.
##' @param C_GENE `rasterDestination` - General Curvature. Path for new raster layer.
##' @param C_PROF `rasterDestination` - Profile Curvature. Path for new raster layer.
##' @param C_PLAN `rasterDestination` - Plan Curvature. Path for new raster layer.
##' @param C_TANG `rasterDestination` - Tangential Curvature. Path for new raster layer.
##' @param C_LONG `rasterDestination` - Longitudinal Curvature. Path for new raster layer.
##' @param C_CROS `rasterDestination` - Cross-Sectional Curvature. Path for new raster layer.
##' @param C_MINI `rasterDestination` - Minimal Curvature. Path for new raster layer.
##' @param C_MAXI `rasterDestination` - Maximal Curvature. Path for new raster layer.
##' @param C_TOTA `rasterDestination` - Total Curvature. Path for new raster layer.
##' @param C_ROTO `rasterDestination` - Flow Line Curvature. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) maximum slope (Travis et al. 1975)", "(1) maximum triangle slope (Tarboton 1997)", "(2) least squares fitted plane (Horn 1981, Costa-Cabral & Burgess 1996)", "(3) 6 parameter 2nd order polynom (Evans 1979)", "(4) 6 parameter 2nd order polynom (Heerdegen & Beran 1982)", "(5) 6 parameter 2nd order polynom (Bauer, Rohdenburg, Bork 1985)", "(6) 9 parameter 2nd order polynom (Zevenbergen & Thorne 1987)", "(7) 10 parameter 3rd order polynom (Haralick 1983)", "(8) 10 parameter 3rd order polynom (Florinsky 2009)")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param UNIT_SLOPE `enum`  of `("(0) radians", "(1) degree", "(2) percent rise")` - Unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param UNIT_ASPECT `enum`  of `("(0) radians", "(1) degree")` - Unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ASPECT - outputRaster - Aspect
##' * C_CROS - outputRaster - Cross-Sectional Curvature
##' * C_GENE - outputRaster - General Curvature
##' * C_LONG - outputRaster - Longitudinal Curvature
##' * C_MAXI - outputRaster - Maximal Curvature
##' * C_MINI - outputRaster - Minimal Curvature
##' * C_PLAN - outputRaster - Plan Curvature
##' * C_PROF - outputRaster - Profile Curvature
##' * C_ROTO - outputRaster - Flow Line Curvature
##' * C_TANG - outputRaster - Tangential Curvature
##' * C_TOTA - outputRaster - Total Curvature
##' * SLOPE - outputRaster - Slope
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_slopeaspectcurvature <- function(ELEVATION = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(), ASPECT = qgisprocess:::qgis_default_value(), C_GENE = qgisprocess:::qgis_default_value(), C_PROF = qgisprocess:::qgis_default_value(), C_PLAN = qgisprocess:::qgis_default_value(), C_TANG = qgisprocess:::qgis_default_value(), C_LONG = qgisprocess:::qgis_default_value(), C_CROS = qgisprocess:::qgis_default_value(), C_MINI = qgisprocess:::qgis_default_value(), C_MAXI = qgisprocess:::qgis_default_value(), C_TOTA = qgisprocess:::qgis_default_value(), C_ROTO = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), UNIT_SLOPE = qgisprocess:::qgis_default_value(), UNIT_ASPECT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:slopeaspectcurvature")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:slopeaspectcurvature", `ELEVATION` = ELEVATION, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `C_GENE` = C_GENE, `C_PROF` = C_PROF, `C_PLAN` = C_PLAN, `C_TANG` = C_TANG, `C_LONG` = C_LONG, `C_CROS` = C_CROS, `C_MINI` = C_MINI, `C_MAXI` = C_MAXI, `C_TOTA` = C_TOTA, `C_ROTO` = C_ROTO, `METHOD` = METHOD, `UNIT_SLOPE` = UNIT_SLOPE, `UNIT_ASPECT` = UNIT_ASPECT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:slopeaspectcurvature", `ELEVATION` = ELEVATION, `SLOPE` = SLOPE, `ASPECT` = ASPECT, `C_GENE` = C_GENE, `C_PROF` = C_PROF, `C_PLAN` = C_PLAN, `C_TANG` = C_TANG, `C_LONG` = C_LONG, `C_CROS` = C_CROS, `C_MINI` = C_MINI, `C_MAXI` = C_MAXI, `C_TOTA` = C_TOTA, `C_ROTO` = C_ROTO, `METHOD` = METHOD, `UNIT_SLOPE` = UNIT_SLOPE, `UNIT_ASPECT` = UNIT_ASPECT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ASPECT")
  }
}