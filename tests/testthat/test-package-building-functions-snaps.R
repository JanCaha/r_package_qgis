# Tests for code and help generation for specific selected QGIS functions

test_that("Functions build code and doc tessellate", {

  skip_in_RCDMCHECK()

  alg_help <- get_alg_help("tessellate")

  expect_snapshot_file(save_txt(alg_help$doc), name = "tesselate_help.txt")
  expect_snapshot_file(save_txt(alg_help$code), name = "tesselate_code.txt")
})

test_that("Functions build code and doc retile", {

  skip_in_RCDMCHECK()

  alg_help <- get_alg_help("retile")

  expect_snapshot_file(save_txt(alg_help$doc), name = "retile_help.txt")
  expect_snapshot_file(save_txt(alg_help$code), name = "retile_code.txt")
})

test_that("Functions build code and doc i.cluster", {

  skip_in_RCDMCHECK()

  alg_help <- get_alg_help("i.cluster")

  expect_snapshot_file(save_txt(alg_help$doc), name = "i_cluster_help.txt")
  expect_snapshot_file(save_txt(alg_help$code), name = "i_cluster_code.txt")
})

test_that("Functions build code and doc r.sim.water", {

  skip_in_RCDMCHECK()

  alg_help <- get_alg_help("r.sim.water")

  expect_snapshot_file(save_txt(alg_help$doc), name = "r_sim_water_help.txt")
  expect_snapshot_file(save_txt(alg_help$code), name = "r_sim_water_code.txt")
})
