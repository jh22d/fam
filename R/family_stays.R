family_stays = function(rsvn, pos_col1, pos_col2, night1, night2, target){
  tidy_rsvn = rsvn %>%
    filter({{pos_col1}} != 0 & {{pos_col2}} != 0) %>%
    mutate(night_total = {{night1}} + {{night2}}) %>%
    select(night_total, {{target}})
  return(tidy_rsvn)
}
