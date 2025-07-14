#' Title
#'
#' @param state
#'
#' @return
#' @export
#'
#' @examples
retrieve_boundary <- function(state){

  boundary_name <- paste(state, "BoundaryShapefile", sep = "_")

  data(list = boundary_name, package = "CASToolClusterPckg", envir = environment())
  boundary_ret <- get(boundary_name, envir = environment())

  return(boundary_ret)
}
