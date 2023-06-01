##' QGIS Algorithm provided by SAGA Topographic correction (saga:topographiccorrection)
##'
##' @title QGIS algorithm Topographic correction
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param ORIGINAL `raster` - Original Image. Path to a raster layer.
##' @param AZI `number` - Azimuth. A numeric value.
##' @param HGT `number` - Height. A numeric value.
##' @param METHOD `enum`  of `("[0] Cosine Correction (Teillet et al. 1982)", "[1] Cosine Correction (Civco 1989)", "[2] Minnaert Correction", "[3] Minnaert Correction with Slope (Riano et al. 2003)", "[4] Minnaert Correction with Slope (Law & Nichol 2004)", "[5] C Correction", "[6] Normalization (after Civco, modified by Law & Nichol)")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MINNAERT `number` - Minnaert Correction. A numeric value.
##' @param MAXCELLS `number` - Maximum Cells (C Correction Analysis). A numeric value.
##' @param MAXVALUE `enum`  of `("[0] 1 byte (0-255)", "[1] 2 byte (0-65535)")` - Value Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CORRECTED `rasterDestination` - Corrected Image. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CORRECTED - outputRaster - Corrected Image
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_topographiccorrection <- function(DEM = qgisprocess:::qgis_default_value(), ORIGINAL = qgisprocess:::qgis_default_value(), AZI = qgisprocess:::qgis_default_value(), HGT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), MINNAERT = qgisprocess:::qgis_default_value(), MAXCELLS = qgisprocess:::qgis_default_value(), MAXVALUE = qgisprocess:::qgis_default_value(), CORRECTED = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:topographiccorrection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:topographiccorrection", `DEM` = DEM, `ORIGINAL` = ORIGINAL, `AZI` = AZI, `HGT` = HGT, `METHOD` = METHOD, `MINNAERT` = MINNAERT, `MAXCELLS` = MAXCELLS, `MAXVALUE` = MAXVALUE, `CORRECTED` = CORRECTED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:topographiccorrection", `DEM` = DEM, `ORIGINAL` = ORIGINAL, `AZI` = AZI, `HGT` = HGT, `METHOD` = METHOD, `MINNAERT` = MINNAERT, `MAXCELLS` = MAXCELLS, `MAXVALUE` = MAXVALUE, `CORRECTED` = CORRECTED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CORRECTED")
  }
}