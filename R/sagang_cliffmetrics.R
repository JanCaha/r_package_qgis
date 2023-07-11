##' QGIS Algorithm provided by SAGA Next Gen Cliffmetrics (sagang:cliffmetrics). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SEDIMENT_TOP: Sediment Top Elevation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RASTER_COAST: Coastline 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RASTER_NORMAL: Normals 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer COAST_INITIAL: User Defined Coastline Points (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer CoastSeaHandiness: Sea handiness 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) right 		- 1: (1) left 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' StartEdgeUserCoastLine: Start edge coastline 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) North 		- 1: (1) East 		- 2: (2) South 		- 3: (3) West 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EndEdgeUserCoastLine: End edge coastline 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) North 		- 1: (1) East 		- 2: (2) South 		- 3: (3) West 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' COAST: Coastline 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NORMALS: Coastline-Normal Profiles 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CLIFF_TOP: Cliff Top Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CLIFF_TOE: Cliff Toe Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer COAST_POINT: Coast Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INVALID_NORMALS: Invalid Coastline-Normal Profiles 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer COAST_CURVATURE: Coastline Curvature 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer PROFILES: Profile Data 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer StillWaterLevel: Still Water Level 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CoastSmooth: Coastline Smoothing Algorithm 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) running mean 		- 2: (2) Savitsky-Golay 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CoastSmoothWindow: Coastline Smoothing Window Size 	Default value:	30 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SavGolCoastPoly: Polynomial Order for Savitsky-Golay 	Default value:	4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ScaleRasterOutput: Scale Raster Output Values 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RandomCoastEdgeSearch: Random Edge for Coastline Search 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CoastNormalLength: Length of Coastline Normals 	Default value:	500 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EleTolerance: Vertical Tolerance 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OutPath: Main Output File Directory 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Cliffmetrics
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param SEDIMENT_TOP `rasterDestination` - Sediment Top Elevation. Path for new raster layer.
##' @param RASTER_COAST `rasterDestination` - Coastline. Path for new raster layer.
##' @param RASTER_NORMAL `rasterDestination` - Normals. Path for new raster layer.
##' @param COAST_INITIAL `source` - User Defined Coastline Points. Path to a vector layer.
##' @param CoastSeaHandiness `enum`  of `("(0) right", "(1) left")` - Sea handiness. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param StartEdgeUserCoastLine `enum`  of `("(0) North", "(1) East", "(2) South", "(3) West")` - Start edge coastline. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EndEdgeUserCoastLine `enum`  of `("(0) North", "(1) East", "(2) South", "(3) West")` - End edge coastline. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COAST `vectorDestination` - Coastline. Path for new vector layer.
##' @param NORMALS `vectorDestination` - Coastline-Normal Profiles. Path for new vector layer.
##' @param CLIFF_TOP `vectorDestination` - Cliff Top Points. Path for new vector layer.
##' @param CLIFF_TOE `vectorDestination` - Cliff Toe Points. Path for new vector layer.
##' @param COAST_POINT `vectorDestination` - Coast Points. Path for new vector layer.
##' @param INVALID_NORMALS `vectorDestination` - Invalid Coastline-Normal Profiles. Path for new vector layer.
##' @param COAST_CURVATURE `vectorDestination` - Coastline Curvature. Path for new vector layer.
##' @param PROFILES `vectorDestination` - Profile Data. Path for new vector layer.
##' @param StillWaterLevel `number` - Still Water Level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CoastSmooth `enum`  of `("(0) none", "(1) running mean", "(2) Savitsky-Golay")` - Coastline Smoothing Algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CoastSmoothWindow `number` - Coastline Smoothing Window Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SavGolCoastPoly `number` - Polynomial Order for Savitsky-Golay. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ScaleRasterOutput `boolean` - Scale Raster Output Values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RandomCoastEdgeSearch `boolean` - Random Edge for Coastline Search. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CoastNormalLength `number` - Length of Coastline Normals. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EleTolerance `number` - Vertical Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OutPath `file` - Main Output File Directory. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLIFF_TOE - outputVector - Cliff Toe Points
##' * CLIFF_TOP - outputVector - Cliff Top Points
##' * COAST - outputVector - Coastline
##' * COAST_CURVATURE - outputVector - Coastline Curvature
##' * COAST_POINT - outputVector - Coast Points
##' * INVALID_NORMALS - outputVector - Invalid Coastline-Normal Profiles
##' * NORMALS - outputVector - Coastline-Normal Profiles
##' * PROFILES - outputVector - Profile Data
##' * RASTER_COAST - outputRaster - Coastline
##' * RASTER_NORMAL - outputRaster - Normals
##' * SEDIMENT_TOP - outputRaster - Sediment Top Elevation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_cliffmetrics <- function(DEM = qgisprocess:::qgis_default_value(), SEDIMENT_TOP = qgisprocess:::qgis_default_value(), RASTER_COAST = qgisprocess:::qgis_default_value(), RASTER_NORMAL = qgisprocess:::qgis_default_value(), COAST_INITIAL = qgisprocess:::qgis_default_value(), CoastSeaHandiness = qgisprocess:::qgis_default_value(), StartEdgeUserCoastLine = qgisprocess:::qgis_default_value(), EndEdgeUserCoastLine = qgisprocess:::qgis_default_value(), COAST = qgisprocess:::qgis_default_value(), NORMALS = qgisprocess:::qgis_default_value(), CLIFF_TOP = qgisprocess:::qgis_default_value(), CLIFF_TOE = qgisprocess:::qgis_default_value(), COAST_POINT = qgisprocess:::qgis_default_value(), INVALID_NORMALS = qgisprocess:::qgis_default_value(), COAST_CURVATURE = qgisprocess:::qgis_default_value(), PROFILES = qgisprocess:::qgis_default_value(), StillWaterLevel = qgisprocess:::qgis_default_value(), CoastSmooth = qgisprocess:::qgis_default_value(), CoastSmoothWindow = qgisprocess:::qgis_default_value(), SavGolCoastPoly = qgisprocess:::qgis_default_value(), ScaleRasterOutput = qgisprocess:::qgis_default_value(), RandomCoastEdgeSearch = qgisprocess:::qgis_default_value(), CoastNormalLength = qgisprocess:::qgis_default_value(), EleTolerance = qgisprocess:::qgis_default_value(), OutPath = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:cliffmetrics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:cliffmetrics", `DEM` = DEM, `SEDIMENT_TOP` = SEDIMENT_TOP, `RASTER_COAST` = RASTER_COAST, `RASTER_NORMAL` = RASTER_NORMAL, `COAST_INITIAL` = COAST_INITIAL, `CoastSeaHandiness` = CoastSeaHandiness, `StartEdgeUserCoastLine` = StartEdgeUserCoastLine, `EndEdgeUserCoastLine` = EndEdgeUserCoastLine, `COAST` = COAST, `NORMALS` = NORMALS, `CLIFF_TOP` = CLIFF_TOP, `CLIFF_TOE` = CLIFF_TOE, `COAST_POINT` = COAST_POINT, `INVALID_NORMALS` = INVALID_NORMALS, `COAST_CURVATURE` = COAST_CURVATURE, `PROFILES` = PROFILES, `StillWaterLevel` = StillWaterLevel, `CoastSmooth` = CoastSmooth, `CoastSmoothWindow` = CoastSmoothWindow, `SavGolCoastPoly` = SavGolCoastPoly, `ScaleRasterOutput` = ScaleRasterOutput, `RandomCoastEdgeSearch` = RandomCoastEdgeSearch, `CoastNormalLength` = CoastNormalLength, `EleTolerance` = EleTolerance, `OutPath` = OutPath,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:cliffmetrics", `DEM` = DEM, `SEDIMENT_TOP` = SEDIMENT_TOP, `RASTER_COAST` = RASTER_COAST, `RASTER_NORMAL` = RASTER_NORMAL, `COAST_INITIAL` = COAST_INITIAL, `CoastSeaHandiness` = CoastSeaHandiness, `StartEdgeUserCoastLine` = StartEdgeUserCoastLine, `EndEdgeUserCoastLine` = EndEdgeUserCoastLine, `COAST` = COAST, `NORMALS` = NORMALS, `CLIFF_TOP` = CLIFF_TOP, `CLIFF_TOE` = CLIFF_TOE, `COAST_POINT` = COAST_POINT, `INVALID_NORMALS` = INVALID_NORMALS, `COAST_CURVATURE` = COAST_CURVATURE, `PROFILES` = PROFILES, `StillWaterLevel` = StillWaterLevel, `CoastSmooth` = CoastSmooth, `CoastSmoothWindow` = CoastSmoothWindow, `SavGolCoastPoly` = SavGolCoastPoly, `ScaleRasterOutput` = ScaleRasterOutput, `RandomCoastEdgeSearch` = RandomCoastEdgeSearch, `CoastNormalLength` = CoastNormalLength, `EleTolerance` = EleTolerance, `OutPath` = OutPath,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CLIFF_TOE")
  }
}