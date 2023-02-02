campaigns = list(
  data.frame(campaign = '2023', start = '2023-01-01', stop = '2024-01-01',
             stringsAsFactors = FALSE),
  data.frame(campaign = '2024', start = '2024-01-02', stop = '2025-01-01',
             stringsAsFactors = FALSE)
  )
campaigns = dplyr::bind_rows(campaigns)
campaigns = dplyr::mutate(campaigns, start = as.Date(start), stop = as.Date(stop))

default_current_campaign = dplyr::filter(campaigns, campaign == '2023')
