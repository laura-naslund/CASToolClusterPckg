state.vec <- c("Rhode Island", "Connecticut", "Delaware")
hash <- system("git rev-parse --short=8 HEAD", intern = TRUE)

df <- data.frame(state = character(), numclust = character(), fn = character())
for(i in 1:length(state.vec)){

  current_state <- state.vec[i]
  print(current_state)

  temp <- clusterReaches(state = current_state, pct_var = 60, minCOMIDsCluster = 0.2, user_numclust = NULL, commit_hash = hash)

  df <- df %>%
    dplyr::filter(state != current_state) %>%
    bind_rows(temp)

  rm(list = setdiff(ls(), c("state.vec", "hash", "df", "clusterReaches")))
}

write.csv(df, file.path("inst", "extdata", "pick_list.csv"), row.names = FALSE)
