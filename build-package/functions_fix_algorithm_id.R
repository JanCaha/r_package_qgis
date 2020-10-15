fix_algorithm_id <- function(algorithm_id) {
  stringr::str_replace_all(algorithm_id, "\\.", "_")
}
