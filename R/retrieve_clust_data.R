#' Title
#'
#' @return
#' @export
#'
#' @examples

retrieve_clust_data <- function(State, Clust_num){

  filePath <- system.file("extdata", "pick_list.csv", package = "CASToolClusterPckg")
  pick_list <- read.csv(filePath)

  ret_data_file <- pick_list %>% dplyr::filter(state == State, numclust == as.character(Clust_num)) %>% dplyr::pull(fn)

  if(length(ret_data_file)==0){
    ret_data <- NULL
    message("No data available with requested state and cluster number")
  } else{
    data(list = ret_data_file, package = "CASToolClusterPckg", envir = environment())
    ret_data <- get(ret_data_file, envir = environment())
  }

  return(ret_data)
}

