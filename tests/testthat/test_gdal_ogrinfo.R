test_that("Test run qgis::gdal_ogrinfo", {
  skip_if_not_installed("sf")

  sf_nc <- sf::st_read(system.file("shape/nc.shp", package="sf"))

  result <- qgis::gdal_ogrinfo(INPUT = sf_nc)

  expect_s3_class(result, "qgis_result")

  expect_s3_class(result$OUTPUT, "qgis_outputHtml")

  expect_equal(result$.processx_result$status, 0)
  expect_match(result$.processx_result$stdout, "GDAL command")
  expect_equal(result$.processx_result$timeout, FALSE)

})
