test_that("Test run qgis::qgis_buffer", {
  skip_if_not_installed("sf")

  sf_nc <- sf::st_read(system.file("shape/nc.shp", package="sf"))

  buffered_data <- qgis::qgis_buffer(INPUT = sf_nc,
                                     DISTANCE = 0.5,
                                     END_CAP_STYLE = "Flat",
                                     .complete_output = TRUE) %>%
    sf::st_as_sf()

  sf::st_crs(buffered_data) <- sf::st_crs(sf_nc)

  expect_s3_class(buffered_data, "sf")

  expect_equal(nrow(buffered_data), nrow(sf_nc))

  expect_identical(sf::st_crs(buffered_data)$input, sf::st_crs(sf_nc)$input)

  expect_identical(as.data.frame(sf::st_drop_geometry(buffered_data)),
                   sf::st_drop_geometry(sf_nc))

  expect_equal(sf::st_crs(buffered_data),
               sf::st_crs(sf_nc))

  expect_equal(sf::st_contains(sf::st_as_sfc(sf::st_bbox(buffered_data)),
                               sf::st_as_sfc(sf::st_bbox(sf_nc)))[[1]],
               1)
})
