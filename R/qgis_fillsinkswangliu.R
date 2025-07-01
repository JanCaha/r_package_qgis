##' QGIS Algorithm provided by QGIS (native c++) Fill sinks (Wang & Liu) (native:fillsinkswangliu). Identifies and fills surface depressions in digital elevation models using a method proposed by Wang & Liu. This algorithm uses a method proposed by Wang & Liu to identify and fill surface depressions in digital elevation models.  The method was enhanced to allow the creation of hydrologically sound elevation models, i.e. not only to fill the depression(s) but also to preserve a downward slope along the flow path. If desired, this is accomplished by preserving a minimum slope gradient (and thus elevation difference) between cells.  References: Wang, L. & H. Liu (2006): An efficient method for identifying and filling surface depressions in digital elevation models for hydrologic analysis and modelling. International Journal of Geographical Information Science, Vol. 20, No. 2: 193-213.  This algorithm is a port of the SAGA 'Fill Sinks (Wang & Liu)' tool.
##'
##' @title QGIS algorithm - Fill sinks (Wang & Liu)
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param MIN_SLOPE `number` - Minimum slope (degrees). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CREATION_OPTIONS `string` - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT_FILLED_DEM `rasterDestination` - Output layer (filled DEM). Path for new raster layer.
##' @param OUTPUT_FLOW_DIRECTIONS `rasterDestination` - Output layer (flow directions). Path for new raster layer.
##' @param OUTPUT_WATERSHED_BASINS `rasterDestination` - Output layer (watershed basins). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_FILLED_DEM - outputRaster - Output layer (filled DEM)
##' * OUTPUT_FLOW_DIRECTIONS - outputRaster - Output layer (flow directions)
##' * OUTPUT_WATERSHED_BASINS - outputRaster - Output layer (watershed basins)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_fillsinkswangliu <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), MIN_SLOPE = qgisprocess:::qgis_default_value(), CREATION_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT_FILLED_DEM = qgisprocess:::qgis_default_value(), OUTPUT_FLOW_DIRECTIONS = qgisprocess:::qgis_default_value(), OUTPUT_WATERSHED_BASINS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fillsinkswangliu")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fillsinkswangliu", `INPUT` = INPUT, `BAND` = BAND, `MIN_SLOPE` = MIN_SLOPE, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT_FILLED_DEM` = OUTPUT_FILLED_DEM, `OUTPUT_FLOW_DIRECTIONS` = OUTPUT_FLOW_DIRECTIONS, `OUTPUT_WATERSHED_BASINS` = OUTPUT_WATERSHED_BASINS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fillsinkswangliu", `INPUT` = INPUT, `BAND` = BAND, `MIN_SLOPE` = MIN_SLOPE, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT_FILLED_DEM` = OUTPUT_FILLED_DEM, `OUTPUT_FLOW_DIRECTIONS` = OUTPUT_FLOW_DIRECTIONS, `OUTPUT_WATERSHED_BASINS` = OUTPUT_WATERSHED_BASINS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT_FILLED_DEM")
  }
}