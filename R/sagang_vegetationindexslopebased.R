##' QGIS Algorithm provided by SAGA Next Gen Vegetation index (slope based) (sagang:vegetationindexslopebased). ---------------- Arguments ----------------  RED: Red Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NIR: Near Infrared Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DVI: Difference Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer NDVI: Normalized Difference Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RVI: Ratio Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer NRVI: Normalized Ratio Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TVI: Transformed Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CTVI: Corrected Transformed Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TTVI: Thiam's Transformed Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SAVI: Soil Adjusted Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SOIL: Soil Adjustment Factor 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Vegetation index (slope based)
##'
##' @param RED `raster` - Red Reflectance. Path to a raster layer.
##' @param NIR `raster` - Near Infrared Reflectance. Path to a raster layer.
##' @param DVI `rasterDestination` - Difference Vegetation Index. Path for new raster layer.
##' @param NDVI `rasterDestination` - Normalized Difference Vegetation Index. Path for new raster layer.
##' @param RVI `rasterDestination` - Ratio Vegetation Index. Path for new raster layer.
##' @param NRVI `rasterDestination` - Normalized Ratio Vegetation Index. Path for new raster layer.
##' @param TVI `rasterDestination` - Transformed Vegetation Index. Path for new raster layer.
##' @param CTVI `rasterDestination` - Corrected Transformed Vegetation Index. Path for new raster layer.
##' @param TTVI `rasterDestination` - Thiam's Transformed Vegetation Index. Path for new raster layer.
##' @param SAVI `rasterDestination` - Soil Adjusted Vegetation Index. Path for new raster layer.
##' @param SOIL `number` - Soil Adjustment Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_vegetationindexslopebased <- function(RED = qgisprocess:::qgis_default_value(), NIR = qgisprocess:::qgis_default_value(), DVI = qgisprocess:::qgis_default_value(), NDVI = qgisprocess:::qgis_default_value(), RVI = qgisprocess:::qgis_default_value(), NRVI = qgisprocess:::qgis_default_value(), TVI = qgisprocess:::qgis_default_value(), CTVI = qgisprocess:::qgis_default_value(), TTVI = qgisprocess:::qgis_default_value(), SAVI = qgisprocess:::qgis_default_value(), SOIL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:vegetationindexslopebased")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:vegetationindexslopebased", `RED` = RED, `NIR` = NIR, `DVI` = DVI, `NDVI` = NDVI, `RVI` = RVI, `NRVI` = NRVI, `TVI` = TVI, `CTVI` = CTVI, `TTVI` = TTVI, `SAVI` = SAVI, `SOIL` = SOIL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:vegetationindexslopebased", `RED` = RED, `NIR` = NIR, `DVI` = DVI, `NDVI` = NDVI, `RVI` = RVI, `NRVI` = NRVI, `TVI` = TVI, `CTVI` = CTVI, `TTVI` = TTVI, `SAVI` = SAVI, `SOIL` = SOIL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CTVI")
  }
}