top105 = readLines("http://www.textfiles.com/music/ktop100.txt")
top105 = top105[-c(64, 65)] # missing No. 54 and 55
newstring1 = gsub("[:punct:]"," ",top105)
newstring2 = gsub("[A-z]"," ",newstring1)
newstring3 = gsub("[:blank:]", " ", newstring2)
newstring2
