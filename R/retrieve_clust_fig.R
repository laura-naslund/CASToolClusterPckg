#' Title
#'
#' @param State
#' @param Clust_num
#'
#' @return
#' @export
#'
#' @examples
#'
retrieve_clust_fig <- function(State, Clust_num){
  filePath <- system.file("extdata", "pick_list.csv", package = "CASToolClusterPckg")
  pick_list <- read.csv(filePath)

  ret_data_file <- pick_list %>% dplyr::filter(state == State, numclust == as.character(Clust_num)) %>% dplyr::pull(fn)

  if(length(ret_data_file)==0){
    ret_fp <- NULL
    message("No data available with requested state and cluster number")
  } else{
    ret_fp <- system.file("extdata", state.abb[which(state.name == State)], paste0(stringr::str_replace(ret_data_file, "Assignments", "Graphics"), ".png"), package = "CASToolClusterPckg")
  }

  return(ret_fp)
}
