##' QGIS Algorithm provided by QGIS (native c++) DTM filter (slope-based) (native:dtmslopebasedfilter). This algorithm can be used to filter a digital elevation model in order to classify its cells into ground and object (non-ground) cells.  The tool uses concepts as described by Vosselman (2000) and is based on the assumption that a large height difference between two nearby cells is unlikely to be caused by a steep slope in the terrain. The probability that the higher cell might be non-ground increases when the distance between the two cells decreases. Therefore the filter defines a maximum height difference (idz_max/i) between two cells as a function of the distance (id/i) between the cells (idz_max( d ) = d/i).  A cell is classified as terrain if there is no cell within the kernel radius to which the height difference is larger than the allowed maximum height difference at the distance between these two cells.  The approximate terrain slope (is/i) parameter is used to modify the filter function to match the overall slope in the study area (idz_max( d ) = d * s/i).  A 5 % confidence interval (ici = 1.65 * sqrt( 2 * stddev )/i) may be used to modify the filter function even further by either relaxing (idz_max( d ) = d * s + ci/i) or amplifying (idz_max( d ) = d * s - ci/i) the filter criterium.  References: Vosselman, G. (2000): Slope based filtering of laser altimetry data. IAPRS, Vol. XXXIII, Part B3, Amsterdam, The Netherlands, 935-942  This algorithm is a port of the SAGA 'DTM Filter (slope-based)' tool.
##'
##' @title QGIS algorithm - DTM filter (slope-based)
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param RADIUS `number` - Kernel radius (pixels). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TERRAIN_SLOPE `number` - Terrain slope (%, pixel size\code{/}vertical units). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FILTER_MODIFICATION `enum`  of `("None", "Relax filter", "Amplify")` - Filter modification. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param STANDARD_DEVIATION `number` - Standard deviation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CREATE_OPTIONS `string` - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT_GROUND `rasterDestination` - Output layer (ground). Path for new raster layer.
##' @param OUTPUT_NONGROUND `rasterDestination` - Output layer (non-ground objects). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_GROUND - outputRaster - Output layer (ground)
##' * OUTPUT_NONGROUND - outputRaster - Output layer (non-ground objects)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_dtmslopebasedfilter <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), TERRAIN_SLOPE = qgisprocess:::qgis_default_value(), FILTER_MODIFICATION = qgisprocess:::qgis_default_value(), STANDARD_DEVIATION = qgisprocess:::qgis_default_value(), CREATE_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT_GROUND = qgisprocess:::qgis_default_value(), OUTPUT_NONGROUND = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:dtmslopebasedfilter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:dtmslopebasedfilter", `INPUT` = INPUT, `BAND` = BAND, `RADIUS` = RADIUS, `TERRAIN_SLOPE` = TERRAIN_SLOPE, `FILTER_MODIFICATION` = FILTER_MODIFICATION, `STANDARD_DEVIATION` = STANDARD_DEVIATION, `CREATE_OPTIONS` = CREATE_OPTIONS, `OUTPUT_GROUND` = OUTPUT_GROUND, `OUTPUT_NONGROUND` = OUTPUT_NONGROUND,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:dtmslopebasedfilter", `INPUT` = INPUT, `BAND` = BAND, `RADIUS` = RADIUS, `TERRAIN_SLOPE` = TERRAIN_SLOPE, `FILTER_MODIFICATION` = FILTER_MODIFICATION, `STANDARD_DEVIATION` = STANDARD_DEVIATION, `CREATE_OPTIONS` = CREATE_OPTIONS, `OUTPUT_GROUND` = OUTPUT_GROUND, `OUTPUT_NONGROUND` = OUTPUT_NONGROUND,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT_GROUND")
  }
}