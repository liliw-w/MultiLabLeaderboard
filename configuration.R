campaigns = list(
  data.frame(campaign = 'Fall 2024', start = '2023-09-12', stop = '2024-01-01',
             stringsAsFactors = FALSE),
  data.frame(campaign = 'Winter 2023', start = '2023-01-02', stop = '2023-03-24',
             stringsAsFactors = FALSE),
  data.frame(campaign = 'Spring 2023', start = '2023-03-25', stop = '2023-06-12',
             stringsAsFactors = FALSE),
  data.frame(campaign = 'Summer 2023', start = '2023-06-13', stop = '2023-09-11',
             stringsAsFactors = FALSE)
  )
campaigns = dplyr::bind_rows(campaigns)
campaigns = dplyr::mutate(campaigns, start = as.Date(start), stop = as.Date(stop))

default_current_campaign = dplyr::filter(campaigns, campaign == 'Winter 2023')
