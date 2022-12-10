library(rvest)
html = read_html("https://introdatasci.dlilab.com/schedule_materials/")
html_tibble = html %>% html_table()
html_df = as.data.frame(html_tibble)
day_month = html_df[1]

library(tidyr)
day_month_split = separate(data = day_month, col = Date, into = c("month", "day"), sep = " ")
day_month_split

library(dbplyr)
group_by_df = day_month_split %>% group_by(month) %>% summarise(total_lectures = sum(month))
group_by_df

