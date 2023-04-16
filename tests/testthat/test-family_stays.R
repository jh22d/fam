rsvn = tibble::tibble(no_of_adults = c(-1,-2,5,8,10), no_of_children = c(-2,0,5,6,7),
                      no_of_weekend_nights = c(1,0,2,7,1), no_of_week_nights = c(0,1,2,3,6),
                      booking_status = c('d','e','e','d','e'))

test_correct_df = family_stays(rsvn, no_of_adults, no_of_children, no_of_weekend_nights, no_of_week_nights, booking_status)


testthat::test_that("`family_stays` should return a data frame", {
  testthat::expect_equal(4, nrow(test_correct_df))
})

testthat::test_that("`family_stays` should call an exirting column name", {
  testthat::expect_error(
    family_stays(no_of_adults, no_of_children,
                 no_of_weekend_nights,
                 a,
                 booking_status))
})
