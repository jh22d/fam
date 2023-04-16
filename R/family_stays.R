#' Title Manipulation on the Hotel Reservations
#'
#' @param rsvn A dataset
#' @param pos_col1 Column with only positive values keepped
#' @param pos_col2 Column with only positive values keepped
#' @param night1 Column recording the number of nights reserved
#' @param night2 Column recording the number of nights reserved
#' @param target Predicted variables
#'
#' @return Data frame with 2 columns only

#' @export
#'
#' @examples
#' rsvn = tibble::tibble(no_of_adults = c(-1,-2,5,8,10), no_of_children = c(-2,0,5,6,7),
#'  no_of_weekend_nights = c(1,0,2,7,1), no_of_week_nights = c(0,1,2,3,6),
#'  booking_status = c('d','e','e','d','e'))
#' family_stays(rsvn, no_of_adults, no_of_children, no_of_weekend_nights,
#' no_of_week_nights, booking_status)

family_stays = function(rsvn, pos_col1, pos_col2, night1, night2, target){
    tidy1 = dplyr::filter(rsvn, {{pos_col1}} != 0 & {{pos_col2}} != 0)
    tidy2 = dplyr::mutate(tidy1, night_total = {{night1}} + {{night2}})
   tidy_rsvn = dplyr::select(tidy2, night_total, {{target}})
  return(tidy_rsvn)
}
