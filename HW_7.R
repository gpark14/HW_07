#1
rm_0s_by_col().<- df %>% select(-c(id, name, chapters))

#2
rm_0s_by_row()<- df[!(row.names(df) %in% c("1","2")),]
