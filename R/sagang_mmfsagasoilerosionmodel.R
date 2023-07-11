##' QGIS Algorithm provided by SAGA Next Gen Mmf-saga soil erosion model (sagang:mmfsagasoilerosionmodel). ---------------- Arguments ----------------  DTM: Digital Terrain Model 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer S: Slope 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CHANNEL: Channel Network (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PI: Permament Interception 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CC: Canopy Cover 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PH: Plant Height 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer EtEo: Ratio Evapotranspiration 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GC: Ground cover 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer D: Diameter plant elements 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NV: Number plant elements 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MS: Soil moisture (at FC) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BD: Bulk density top layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer EHD: Effective hydrological depth 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LP: Sat. lateral permeability 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PER_C: Percentage clays 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PER_Z: Percentage silt 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PER_S: Percentage sand 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ST: Percentage rock fragments 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RFR: Surface roughness (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TAB_METEO: Meteorological data (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer OUT_PATH: Output file path 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file INTERFLOW: Simulate Interflow 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T: Mean temperature 	Default value:	18 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIMESPAN: Timespan (days) 	Default value:	30 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression IF: Interflow 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer R: Rainfall 	Default value:	200 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression I: Rainfall intensity 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression Rn: Rainfall Duration 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KE_I_METHOD: Relationship KE - I 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) North America east of Rocky Mountains (Wischmeier & Smith 1978) 		- 1: (1) North-western Europe (Marshall & Palmer) 		- 2: (2) Mediterranean-type climates (Zanchi & Torri 1980) 		- 3: (3) Western Mediterranean (Coutinho & Tomas 1995) 		- 4: (4) Tropical climates (Hudson 1965) 		- 5: (5) Eastern Asia (Onaga et al. 1998) 		- 6: (6) Southern hemisphere climates (Rosewell 1986) 		- 7: (7) Bogor, West-Java, Indonesia (McISaac 1990) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FLOWD_VA: Flow Depth (actual flow velocity) 	Default value:	0.005 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CHANNELTRANSPORT: Route Soil along Channel Network 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression Q: Mean runoff 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SL: Mean soil loss 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer Rf: Effective Rainfall 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer KE: Total Kinetic Energy 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer Rc: Soil moisture storage capacity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TCc: Transport Capacity Clay 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TCz: Transport Capacity Silt 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TCs: Transport Capacity Sand 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer Gc: Available Clay 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer Gz: Available Silt 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer Gs: Available Sand 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLc: Sediment Balance Clay 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLz: Sediment Balance Silt 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLs: Sediment Balance Sand 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TCONDc: Transport Condition Clay 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TCONDz: Transport Condition Silt 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TCONDs: Transport Condition Sand 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer W_up: Upslope Flow Width 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Mmf-saga soil erosion model
##'
##' @param DTM `raster` - Digital Terrain Model. Path to a raster layer.
##' @param S `raster` - Slope. Path to a raster layer.
##' @param CHANNEL `raster` - Channel Network. Path to a raster layer.
##' @param PI `raster` - Permament Interception. Path to a raster layer.
##' @param CC `raster` - Canopy Cover. Path to a raster layer.
##' @param PH `raster` - Plant Height. Path to a raster layer.
##' @param EtEo `raster` - Ratio Evapotranspiration. Path to a raster layer.
##' @param GC `raster` - Ground cover. Path to a raster layer.
##' @param D `raster` - Diameter plant elements. Path to a raster layer.
##' @param NV `raster` - Number plant elements. Path to a raster layer.
##' @param MS `raster` - Soil moisture (at FC). Path to a raster layer.
##' @param BD `raster` - Bulk density top layer. Path to a raster layer.
##' @param EHD `raster` - Effective hydrological depth. Path to a raster layer.
##' @param LP `raster` - Sat. lateral permeability. Path to a raster layer.
##' @param PER_C `raster` - Percentage clays. Path to a raster layer.
##' @param PER_Z `raster` - Percentage silt. Path to a raster layer.
##' @param PER_S `raster` - Percentage sand. Path to a raster layer.
##' @param ST `raster` - Percentage rock fragments. Path to a raster layer.
##' @param RFR `raster` - Surface roughness. Path to a raster layer.
##' @param TAB_METEO `source` - Meteorological data. Path to a vector layer.
##' @param OUT_PATH `file` - Output file path. Path to a file.
##' @param INTERFLOW `boolean` - Simulate Interflow. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T `number` - Mean temperature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIMESPAN `number` - Timespan (days). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param IF `rasterDestination` - Interflow. Path for new raster layer.
##' @param R `number` - Rainfall. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param I `number` - Rainfall intensity. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param Rn `number` - Rainfall Duration. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KE_I_METHOD `enum`  of `("(0) North America east of Rocky Mountains (Wischmeier & Smith 1978)", "(1) North-western Europe (Marshall & Palmer)", "(2) Mediterranean-type climates (Zanchi & Torri 1980)", "(3) Western Mediterranean (Coutinho & Tomas 1995)", "(4) Tropical climates (Hudson 1965)", "(5) Eastern Asia (Onaga et al. 1998)", "(6) Southern hemisphere climates (Rosewell 1986)", "(7) Bogor, West-Java, Indonesia (McISaac 1990)")` - Relationship KE - I. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FLOWD_VA `number` - Flow Depth (actual flow velocity). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CHANNELTRANSPORT `boolean` - Route Soil along Channel Network. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param Q `rasterDestination` - Mean runoff. Path for new raster layer.
##' @param SL `rasterDestination` - Mean soil loss. Path for new raster layer.
##' @param Rf `rasterDestination` - Effective Rainfall. Path for new raster layer.
##' @param KE `rasterDestination` - Total Kinetic Energy. Path for new raster layer.
##' @param Rc `rasterDestination` - Soil moisture storage capacity. Path for new raster layer.
##' @param TCc `rasterDestination` - Transport Capacity Clay. Path for new raster layer.
##' @param TCz `rasterDestination` - Transport Capacity Silt. Path for new raster layer.
##' @param TCs `rasterDestination` - Transport Capacity Sand. Path for new raster layer.
##' @param Gc `rasterDestination` - Available Clay. Path for new raster layer.
##' @param Gz `rasterDestination` - Available Silt. Path for new raster layer.
##' @param Gs `rasterDestination` - Available Sand. Path for new raster layer.
##' @param SLc `rasterDestination` - Sediment Balance Clay. Path for new raster layer.
##' @param SLz `rasterDestination` - Sediment Balance Silt. Path for new raster layer.
##' @param SLs `rasterDestination` - Sediment Balance Sand. Path for new raster layer.
##' @param TCONDc `rasterDestination` - Transport Condition Clay. Path for new raster layer.
##' @param TCONDz `rasterDestination` - Transport Condition Silt. Path for new raster layer.
##' @param TCONDs `rasterDestination` - Transport Condition Sand. Path for new raster layer.
##' @param W_up `rasterDestination` - Upslope Flow Width. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * Gc - outputRaster - Available Clay
##' * Gs - outputRaster - Available Sand
##' * Gz - outputRaster - Available Silt
##' * IF - outputRaster - Interflow
##' * KE - outputRaster - Total Kinetic Energy
##' * Q - outputRaster - Mean runoff
##' * Rc - outputRaster - Soil moisture storage capacity
##' * Rf - outputRaster - Effective Rainfall
##' * SL - outputRaster - Mean soil loss
##' * SLc - outputRaster - Sediment Balance Clay
##' * SLs - outputRaster - Sediment Balance Sand
##' * SLz - outputRaster - Sediment Balance Silt
##' * TCONDc - outputRaster - Transport Condition Clay
##' * TCONDs - outputRaster - Transport Condition Sand
##' * TCONDz - outputRaster - Transport Condition Silt
##' * TCc - outputRaster - Transport Capacity Clay
##' * TCs - outputRaster - Transport Capacity Sand
##' * TCz - outputRaster - Transport Capacity Silt
##' * W_up - outputRaster - Upslope Flow Width
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_mmfsagasoilerosionmodel <- function(DTM = qgisprocess:::qgis_default_value(), S = qgisprocess:::qgis_default_value(), CHANNEL = qgisprocess:::qgis_default_value(), PI = qgisprocess:::qgis_default_value(), CC = qgisprocess:::qgis_default_value(), PH = qgisprocess:::qgis_default_value(), EtEo = qgisprocess:::qgis_default_value(), GC = qgisprocess:::qgis_default_value(), D = qgisprocess:::qgis_default_value(), NV = qgisprocess:::qgis_default_value(), MS = qgisprocess:::qgis_default_value(), BD = qgisprocess:::qgis_default_value(), EHD = qgisprocess:::qgis_default_value(), LP = qgisprocess:::qgis_default_value(), PER_C = qgisprocess:::qgis_default_value(), PER_Z = qgisprocess:::qgis_default_value(), PER_S = qgisprocess:::qgis_default_value(), ST = qgisprocess:::qgis_default_value(), RFR = qgisprocess:::qgis_default_value(), TAB_METEO = qgisprocess:::qgis_default_value(), OUT_PATH = qgisprocess:::qgis_default_value(), INTERFLOW = qgisprocess:::qgis_default_value(), T = qgisprocess:::qgis_default_value(), TIMESPAN = qgisprocess:::qgis_default_value(), IF = qgisprocess:::qgis_default_value(), R = qgisprocess:::qgis_default_value(), I = qgisprocess:::qgis_default_value(), Rn = qgisprocess:::qgis_default_value(), KE_I_METHOD = qgisprocess:::qgis_default_value(), FLOWD_VA = qgisprocess:::qgis_default_value(), CHANNELTRANSPORT = qgisprocess:::qgis_default_value(), Q = qgisprocess:::qgis_default_value(), SL = qgisprocess:::qgis_default_value(), Rf = qgisprocess:::qgis_default_value(), KE = qgisprocess:::qgis_default_value(), Rc = qgisprocess:::qgis_default_value(), TCc = qgisprocess:::qgis_default_value(), TCz = qgisprocess:::qgis_default_value(), TCs = qgisprocess:::qgis_default_value(), Gc = qgisprocess:::qgis_default_value(), Gz = qgisprocess:::qgis_default_value(), Gs = qgisprocess:::qgis_default_value(), SLc = qgisprocess:::qgis_default_value(), SLz = qgisprocess:::qgis_default_value(), SLs = qgisprocess:::qgis_default_value(), TCONDc = qgisprocess:::qgis_default_value(), TCONDz = qgisprocess:::qgis_default_value(), TCONDs = qgisprocess:::qgis_default_value(), W_up = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:mmfsagasoilerosionmodel")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:mmfsagasoilerosionmodel", `DTM` = DTM, `S` = S, `CHANNEL` = CHANNEL, `PI` = PI, `CC` = CC, `PH` = PH, `EtEo` = EtEo, `GC` = GC, `D` = D, `NV` = NV, `MS` = MS, `BD` = BD, `EHD` = EHD, `LP` = LP, `PER_C` = PER_C, `PER_Z` = PER_Z, `PER_S` = PER_S, `ST` = ST, `RFR` = RFR, `TAB_METEO` = TAB_METEO, `OUT_PATH` = OUT_PATH, `INTERFLOW` = INTERFLOW, `T` = T, `TIMESPAN` = TIMESPAN, `IF` = IF, `R` = R, `I` = I, `Rn` = Rn, `KE_I_METHOD` = KE_I_METHOD, `FLOWD_VA` = FLOWD_VA, `CHANNELTRANSPORT` = CHANNELTRANSPORT, `Q` = Q, `SL` = SL, `Rf` = Rf, `KE` = KE, `Rc` = Rc, `TCc` = TCc, `TCz` = TCz, `TCs` = TCs, `Gc` = Gc, `Gz` = Gz, `Gs` = Gs, `SLc` = SLc, `SLz` = SLz, `SLs` = SLs, `TCONDc` = TCONDc, `TCONDz` = TCONDz, `TCONDs` = TCONDs, `W_up` = W_up,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:mmfsagasoilerosionmodel", `DTM` = DTM, `S` = S, `CHANNEL` = CHANNEL, `PI` = PI, `CC` = CC, `PH` = PH, `EtEo` = EtEo, `GC` = GC, `D` = D, `NV` = NV, `MS` = MS, `BD` = BD, `EHD` = EHD, `LP` = LP, `PER_C` = PER_C, `PER_Z` = PER_Z, `PER_S` = PER_S, `ST` = ST, `RFR` = RFR, `TAB_METEO` = TAB_METEO, `OUT_PATH` = OUT_PATH, `INTERFLOW` = INTERFLOW, `T` = T, `TIMESPAN` = TIMESPAN, `IF` = IF, `R` = R, `I` = I, `Rn` = Rn, `KE_I_METHOD` = KE_I_METHOD, `FLOWD_VA` = FLOWD_VA, `CHANNELTRANSPORT` = CHANNELTRANSPORT, `Q` = Q, `SL` = SL, `Rf` = Rf, `KE` = KE, `Rc` = Rc, `TCc` = TCc, `TCz` = TCz, `TCs` = TCs, `Gc` = Gc, `Gz` = Gz, `Gs` = Gs, `SLc` = SLc, `SLz` = SLz, `SLs` = SLs, `TCONDc` = TCONDc, `TCONDz` = TCONDz, `TCONDs` = TCONDs, `W_up` = W_up,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "Gc")
  }
}