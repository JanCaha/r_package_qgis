##' QGIS Algorithm provided by SAGA Vegetation index (slope based) (saga:vegetationindexslopebased)
##'
##' @title QGIS algorithm Vegetation index (slope based)
##'
##' @param NIR `raster` - Near Infrared Reflectance. Path to a raster layer.
##' @param RED `raster` - Red Reflectance. Path to a raster layer.
##' @param SOIL `number` - Soil Adjustment Factor. A numeric value.
##' @param DVI `rasterDestination` - Difference Vegetation Index. Path for new raster layer.
##' @param NDVI `rasterDestination` - Normalized Difference Vegetation Index. Path for new raster layer.
##' @param RVI `rasterDestination` - Ratio Vegetation Index. Path for new raster layer.
##' @param NRVI `rasterDestination` - Normalized Ratio Vegetation Index. Path for new raster layer.
##' @param TVI `rasterDestination` - Transformed Vegetation Index. Path for new raster layer.
##' @param CTVI `rasterDestination` - Corrected Transformed Vegetation Index. Path for new raster layer.
##' @param TTVI `rasterDestination` - Thiam's Transformed Vegetation Index. Path for new raster layer.
##' @param SAVI `rasterDestination` - Soil Adjusted Vegetation Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CTVI - outputRaster - Corrected Transformed Vegetation Index
##' * DVI - outputRaster - Difference Vegetation Index
##' * NDVI - outputRaster - Normalized Difference Vegetation Index
##' * NRVI - outputRaster - Normalized Ratio Vegetation Index
##' * RVI - outputRaster - Ratio Vegetation Index
##' * SAVI - outputRaster - Soil Adjusted Vegetation Index
##' * TTVI - outputRaster - Thiam's Transformed Vegetation Index
##' * TVI - outputRaster - Transformed Vegetation Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_vegetationindexslopebased <- function(NIR = qgisprocess:::qgis_default_value(), RED = qgisprocess:::qgis_default_value(), SOIL = qgisprocess:::qgis_default_value(), DVI = qgisprocess:::qgis_default_value(), NDVI = qgisprocess:::qgis_default_value(), RVI = qgisprocess:::qgis_default_value(), NRVI = qgisprocess:::qgis_default_value(), TVI = qgisprocess:::qgis_default_value(), CTVI = qgisprocess:::qgis_default_value(), TTVI = qgisprocess:::qgis_default_value(), SAVI = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:vegetationindexslopebased")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:vegetationindexslopebased", `NIR` = NIR, `RED` = RED, `SOIL` = SOIL, `DVI` = DVI, `NDVI` = NDVI, `RVI` = RVI, `NRVI` = NRVI, `TVI` = TVI, `CTVI` = CTVI, `TTVI` = TTVI, `SAVI` = SAVI,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:vegetationindexslopebased", `NIR` = NIR, `RED` = RED, `SOIL` = SOIL, `DVI` = DVI, `NDVI` = NDVI, `RVI` = RVI, `NRVI` = NRVI, `TVI` = TVI, `CTVI` = CTVI, `TTVI` = TTVI, `SAVI` = SAVI,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CTVI")
  }
}