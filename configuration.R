campaigns = list(
  data.frame(campaign = '2023 Winter', start = '2022-12-01', stop = '2023-03-01',
             stringsAsFactors = FALSE),
  data.frame(campaign = '2023 Spring', start = '2023-03-02', stop = '2023-06-01',
             stringsAsFactors = FALSE),
  data.frame(campaign = '2023 Summer', start = '2023-06-02', stop = '2023-09-01',
             stringsAsFactors = FALSE),
  data.frame(campaign = '2023 Fall', start = '2023-09-02', stop = '2023-12-01',
             stringsAsFactors = FALSE),
  data.frame(campaign = '2024', start = '2024-12-02', stop = '2025-01-01',
             stringsAsFactors = FALSE)
  )
campaigns = dplyr::bind_rows(campaigns)
campaigns = dplyr::mutate(campaigns, start = as.Date(start), stop = as.Date(stop))


current_date = Sys.Date()
default_current_campaign = dplyr::filter(
  campaigns, 
  start <= !!current_date & !!current_date <= stop
)
