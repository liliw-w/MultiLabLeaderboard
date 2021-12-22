campaigns = list(
  data.frame(campaign = 'Fall 2021', start = '2021-09-12', stop = '2022-01-01',
             stringsAsFactors = FALSE),
  data.frame(campaign = 'Winter 2022', start = '2022-01-02', stop = '2022-03-24',
             stringsAsFactors = FALSE),
  data.frame(campaign = 'Spring 2022', start = '2022-03-25', stop = '2022-06-12',
             stringsAsFactors = FALSE),
  data.frame(campaign = 'Summer 2022', start = '2022-06-13', stop = '2022-09-11',
             stringsAsFactors = FALSE)
  )
campaigns = dplyr::bind_rows(campaigns)
campaigns = dplyr::mutate(campaigns, start = as.Date(start), stop = as.Date(stop))

default_current_campaign = dplyr::filter(campaigns, campaign == 'Fall 2021')
