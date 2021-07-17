// code: 77f7f7fxuz
// Chapter 4.1 Fig. 2
// Drone events per year
// Data: UCDP Georeferenced Event Dataset (GED) Global version 20.1
// you need to get ucdp-prio-acd-201.dta online. It is not in this repo

// search for drone is text data
cap drop drone
gen drone = strpos(lower(source_headline), "drone") | strpos(lower(source_article), "drone") > 0
tab drone

// bar chart
graph bar (count) if drone == 1, over(year) 
